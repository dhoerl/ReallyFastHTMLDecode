ReallyFastHTMLDecode
====================

Objective-C HTML Decoder with Concurrent Processing

This project wraps the HTMLDecode class with a test harness to test the processing of encoded strings. The harness has a text view with some example text, but you can paste in whatever text you want then process it.

HTMLDecode works by first splitting the UTF8 encoded data (or an existing string) into an array of "chunks" separated by '&'s. It then processes each chunk concurrently, then reassembles each chunk into a new string.

In addition to the use of concurrent block processing, entities are decoded using a block-specific NSScanner instance.

This code is offered under a simple BSD license with no attribution required.

Copyright (c) 2013 by David Hoerl
