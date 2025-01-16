# devops-interview

## Prerequisites
- Visual Studio Code
- Docker

## Instructions
1. Clone the repository:
    ```sh
    git clone GRIFFINGlobalTech/devops-interview
    cd devops-interview
    ```

2. Open the repository in Visual Studio Code:
    ```sh
    code .
    ```
3. Create a `.env` file with contents from the `env_template`
- Update this file with your actual aws credentials - Even the aws trial account should work

4. Reopen the folder in a Dev Container:
    - Press `F1` and select `Remote-Containers: Reopen in Container`.

5. Run the application:
    ```sh
    python app.py
    ```

6. Open your browser and navigate to `http://localhost:5000` to view the app.