# Social Science Study on Birth Rates on US

This repository focuses on analyzing and visualizing data related to birth rates in US, replicating the study conducted by Kearney, Levine, and Pardue (2022). Through an analysis of trends spanning from 1980 to 2020, we investigate variations in birth rates among different age groups and disparities based on the race and ethnicity of mothers. While initially attributing the decline to the Great Recession, our analysis uncovers additional factors contributing to this trend. Furthermore, our exploration delves into socio-cultural aspects, offering insights for policymakers and researchers interested in population trends and their implications.

## Statement on LLM Usage
Certain sections of the code were generated with the assistance of ChatGPT3.5. The complete chat history is available in `inputs/llms/usage.txt`. It's important to acknowledge the collaboration with this language model to enhance the analytical process.

## Reproducibility

### Dependencies
To reproduce the analysis, ensure you have the following R packages installed:

- `ggplot2`
- 'gridExtra'

You can install these packages using the following command:

```R
install.packages(c("ggplot2", "gridExtra"))
```

### Code Execution
The analysis is performed in R, and the code is available in the `analysis` directory. To execute the code, follow these steps:

1. Load the required libraries.
2. Read the cleaned data from the CSV file.
3. Perform data filtering and manipulation for specific analyses.
4. Generate tables and graphs to visualize trends.


## Folder Structure

- **inputs:** Contains input data and additional resources.
  - **llms:** Includes the chat history with the language model.
- **outputs:** Stores generated tables, graphs, and other output files.
- **scripts:** Holds R scripts for data simulating, downloading, cleaning, and tests.

## File Structure

The repo is structured as:

-   `input/data` contains the data sources used in analysis including the raw data.
-   `outputs/data` contains the cleaned dataset that was constructed.
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.
  


## Code and Data Availability

The entire codebase and datasets used for this analysis are available in this repository. You can reproduce the analysis by following the instructions provided in the README.

For any questions or clarifications, feel free to reach out to the repository owner.

*Code and data supporting this analysis is available at: https://github.com/Chay-HyunminPark/Social-Science-Study
