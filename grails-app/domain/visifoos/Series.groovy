package visifoos

class Series {
    Date startDate
    Date endDate
    String title
    String description
    
    static hasMany = [matches:Match]
    
    static constraints = {
        title blank:false
        startDate blank:false
    }
}
