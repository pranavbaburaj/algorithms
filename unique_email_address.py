class Solution:
    def numUniqueEmails(self, emails: List[str]) -> int:
        arr = []
        new_array = []
        
        for x in emails:
            data = x.split("@")
            data[0] = data[0].replace(".", "")
            data[0] = data[0].split("+")[0]
            arr.append(f"{data[0]}@{data[1]}")
            
        for i in arr:
            if i not in new_array:
                new_array.append(i)
        return len(new_array)
        
