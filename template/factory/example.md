// Product.java
public interface Product {}

// Sword.java
public class Sword implements Product {}

// WeaponFactory.java
public class WeaponFactory {
    public static Product create(String type) {
        return switch (type) {
            case "sword" -> new Sword();
            default -> throw new IllegalArgumentException();
        }
    }
}
