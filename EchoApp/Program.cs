using EchoLib;

namespace EchoApp;

/// <summary>
/// Entry point for the EchoApp console application.
/// This application takes command-line arguments and echoes each one to the standard output using the
/// <see cref="EchoLib.Echo.Repeat(string)" /> method.
/// </summary>
internal static class Program {
    /// <summary>
    /// The main method of the application.
    /// Iterates over the command-line arguments and prints each one
    /// using the Echo.Repeat function.
    /// </summary>
    /// <param name="args">Command-line arguments to be echoed.</param>
    private static void Main(string[] args) {
        foreach (var arg in args)
            Console.WriteLine(Echo.Repeat(arg));
    }
}