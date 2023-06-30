class MedianFinder {
public:
    MedianFinder() {
        
    }
    
    void addNum(int num) {
        if (lower.empty() || num < lower.top())
        {
            lower.push(num);
        }
        else
        {
            higher.push(num);
        }

        if (lower.size() > higher.size() + 1)
        {
            higher.push(lower.top());
            lower.pop();
        }
        else if (higher.size() > lower.size())
        {
            lower.push(higher.top());
            higher.pop();
        }
    }
    
    double findMedian() {
        double result { 0.0 };

        if (lower.size() == higher.size())
        {
            result = lower.top() + (higher.top() - lower.top()) / 2.0;
        }
        else
        {
            result = lower.top();
        }

        return result;
    }

private:
    priority_queue<int> lower;
    priority_queue<int, vector<int>, greater<int>> higher;
};

/**
 * Your MedianFinder object will be instantiated and called as such:
 * MedianFinder* obj = new MedianFinder();
 * obj->addNum(num);
 * double param_2 = obj->findMedian();
 */