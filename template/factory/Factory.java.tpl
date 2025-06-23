package {{package}};

public class Factory {

public Product createProduct(String type) {
    return switch (type.toLowerCase()) {
    case "sword" -> new Sword();
    case "axe" -> new Axe();
    default -> throw new IllegalArgumentException("Unknown type: " + type);
    };
  }
}
