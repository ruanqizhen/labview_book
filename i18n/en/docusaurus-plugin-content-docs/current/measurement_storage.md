# Data Storage

## Text vs. Binary File Storage

In test and measurement applications, choosing how to serialize and store data is a critical design decision. The choice generally lies between text-based formats and binary formats.

Text-based files (such as TXT, CSV, XML, and JSON) are human-readable, making them easy to inspect and debug, but they are relatively slow to parse and consume more disk space. Binary files are not human-readable but offer high read/write throughput and compact file sizes.

For configuration data or low-volume test reports, text files are ideal. For high-speed streaming data (such as acquired raw signals), binary formats are preferred.

Wherever possible, you should use standard file formats natively supported by LabVIEW to speed up development. LabVIEW provides a comprehensive set of file operations in the **Programming >> File I/O** palette.


## Text Files

The two most common structured text formats in LabVIEW are INI and XML.

**INI files** use a simple key-value structure categorized under sections. They are lightweight and ideal for saving application preferences, Front Panel control positions, or user-selected defaults. While Windows applications historically used the registry for this purpose, INI files are preferred for cross-platform portability.

However, INI files struggle with deeply nested or hierarchical data structures. For example, if you need to represent a factory hierarchy (e.g., Company $\rightarrow$ Factory $\rightarrow$ Department $\rightarrow$ Production Line $\rightarrow$ Product Serial Numbers), the **XML** or **JSON** format is far more suitable.


## Binary Files and TDMS

For high-performance signal storage, LabVIEW features a specialized binary file format called **Technical Data Management Streaming (TDMS)**. The TDMS format is optimized for streaming data to disk at high speeds, and it supports structured metadata (Channel Groups and Channels) to keep data organized. 

You do not need to understand the underlying binary byte structure of TDMS; LabVIEW provides a high-level **TDM Streaming** API under **Programming >> File I/O >> TDM Streaming**. Primitives like **TDMS Open**, **TDMS Write**, **TDMS Read**, and **TDMS Close** make saving structured measurement data trivial.

Sometimes you may need to save the current state or values of Front Panel controls manually during a run. Instead of writing custom file I/O code, you can use LabVIEW's built-in Front Panel data logging feature. Select **Operate >> Data Logging >> Log...** from the menu to save the current panel states to a database file. To view the saved states later, open the Front Panel and select **Operate >> Data Logging >> Retrieve...** to load the data back into the controls.


## Databases

For enterprise data management, the **LabVIEW Database Connectivity Toolkit** provides VIs to execute SQL queries and interface with relational databases (e.g., SQL Server, MySQL, Oracle, or Access) directly from G.

Databases excel at managing relational, tabular data and performing complex queries. However, raw, high-speed time-series signals rarely benefit from database storage, as you seldom query individual points inside a waveform. It is usually more efficient to save raw waveforms as TDMS files on disk and store metadata (e.g., test timestamp, operator name, UUT serial number, and file path) in the database.


## Report Generation

Once a test concludes, you typically need to generate a formal test report. LabVIEW supports basic HTML and text reporting natively. By installing the **LabVIEW Report Generation Toolkit for Microsoft Office**, you can generate native Word and Excel reports programmatically.

Generating complex layouts programmatically from scratch can be tedious and require extensive G code. A best practice is to design a **Report Template** in Word or Excel first, leaving named placeholders or bookmarks where dynamic results should go. Your LabVIEW code then only needs to open the template, find the bookmarks, insert the dynamic test data and pass/fail verdicts, and save or print the document. This hybrid approach drastically reduces development time.