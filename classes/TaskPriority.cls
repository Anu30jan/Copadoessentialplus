public class TaskPriority {
    
   public static string TestLead(string Leadstate)
    {
        
        If(string.isBlank(Leadstate) || leadState.length() > 2){
             return null;
        }
           
        string taskpriority;
        if (Leadstate == 'CA')
        {
            taskpriority = 'High';
        }
        else
        {
            taskpriority = 'Low';
        }
        
        return taskpriority;
        
        
    }
    

}