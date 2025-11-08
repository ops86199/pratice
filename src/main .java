public class Main {
    public static void main(String[] args) {
        System.out.println("Wellcome to the Application!");
        while(true) {
            try {
                Thread.sleep(10000); // keep running
            } catch (InterruptedException e) {}
        }
    }
}
