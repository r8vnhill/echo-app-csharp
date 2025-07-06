namespace EchoLib;

/// <summary>
/// A minimal library that echoes back input strings.
/// This static class contains a single method <see cref="Repeat" /> that returns the input
/// exactly as received. It is intended as a simple demonstration or placeholder function.
/// </summary>
public static class Echo {
    /// <summary>
    /// Returns the input string unchanged.
    /// </summary>
    /// <param name="input">The string to echo back.</param>
    /// <returns>The same string that was passed in.</returns>
    /// <example>
    /// Example usage:
    /// <code>
    /// Console.WriteLine(
    ///     Echo.Repeat("Is this the end of the beginning?")
    /// );
    /// // Output: Is this the end of the beginning?
    /// </code>
    /// </example>
    public static string Repeat(string input) => input;
}