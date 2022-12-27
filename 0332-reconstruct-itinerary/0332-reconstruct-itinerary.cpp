class Solution {
public:
    vector<string> findItinerary(vector<vector<string>>& tickets) {
        unordered_map<string, multiset<string>> reachableAirports;
        for (int i {0}; i < tickets.size(); ++i)
        {
            reachableAirports[tickets[i][0]].insert(tickets[i][1]);
        }
        
        vector<string> result;
        
        dfs(reachableAirports, "JFK", result);
        reverse(result.begin(), result.end());
        
        return result;
    }
    
private:
    void dfs(unordered_map<string, multiset<string>>& reachableAirports, string airport, vector<string>& result) {
        while (!reachableAirports[airport].empty())
        {
            string next = *reachableAirports[airport].begin();
            reachableAirports[airport].erase(reachableAirports[airport].begin());
            dfs(reachableAirports, next, result);
        }
        
        result.push_back(airport);
    }
};