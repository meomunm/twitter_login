class Utils {
  companion object {
  @JvmStatic
  fun getResourceFromContext(@NonNull context: Context, resName: String): String {
  val stringRes = context.resources.getIdentifier(resName, "string", context.packageName)
  if (stringRes == 0) {
  throw IllegalArgumentException(String.format("The 'R.string.%s' value it's not defined in your project's resources file.", resName))
  }
  return context.getString(stringRes)
}

}
}