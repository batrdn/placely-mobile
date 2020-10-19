class TypeResolver {
  static Map<String, String> typeMap = {
    'Буйдан': 'SOFA',
    'Ор': 'BED',
    'Ширээ': 'TABLE',
    'Сандал': 'CHAIR',
    'Бусад': 'OTHER'
  };

  static String resolve(String type) {
    return typeMap[type];
  }
}
