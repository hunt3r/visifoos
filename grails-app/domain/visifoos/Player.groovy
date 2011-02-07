package visifoos

class Player {
    String name
    String city
    String state
    String bio
    String website
    String email
    

    static constraints = {
        name blank:false
        email blank:false
    }
}
