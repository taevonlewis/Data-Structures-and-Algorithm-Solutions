class Solution {
public:
    bool canFinish(int numCourses, vector<vector<int>>& prerequisites) {
        unordered_map<int, vector<int>> courseReqs;
        for (int i {0}; i < prerequisites.size(); ++i)
        {
            courseReqs[prerequisites[i][0]].push_back(prerequisites[i][1]);
        }
        
        unordered_set<int> visited;
        
        for (int course {0}; course < numCourses; ++course)
        {
            if (!dfs(courseReqs, visited, course))
            {
                return false;
            }
        }
        
        return true;
    }
    
private:
    bool dfs(unordered_map<int, vector<int>>& courseReqs, unordered_set<int>& visited, int course) {
        if (visited.find(course) != visited.end())
        {
            return false;
        }
        
        if (courseReqs[course].empty())
        {
            return true;
        }
        
        visited.insert(course);
        for (int i {0}; i < courseReqs[course].size(); ++i)
        {
            int nextCourse = courseReqs[course][i];
            if (!dfs(courseReqs, visited, nextCourse))
            {
                return false;
            }
        }
        
        courseReqs[course].clear();
        visited.erase(course);
        
        return true;
    }
};