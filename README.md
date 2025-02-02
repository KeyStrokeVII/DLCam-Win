<h1 align="center">Deep-Live-Cam-Windows</h1>

<p align="center">
  Real-time face swap and video deepfake with a single click and only a single image.
</p>

<p align="center">
<a href="https://trendshift.io/repositories/11395" target="_blank"><img src="https://trendshift.io/api/badge/repositories/11395" alt="hacksider%2FDeep-Live-Cam | Trendshift" style="width: 250px; height: 55px;" width="250" height="55"/></a>
</p>

## Live Deepfake in just 3 Clicks
![easysteps](https://github.com/user-attachments/assets/af825228-852c-411b-b787-ffd9aac72fc6)
1. Select a face
2. Select which camera to use
3. Press live!


---

# Manual Installation for Windows (GPU Support Only)

---

**Note:** These instructions are for advanced users. If unsure, consider downloading the [prebuilt version](https://hacksider.gumroad.com/l/vccdmm) for easier setup.

## Prerequisites

Ensure the following are installed on your system:

- **Anaconda or Miniconda**: Used for creating isolated Python environments, which helps manage dependencies and avoid conflicts.
- **pip**: Python's package manager, necessary for installing additional Python packages.
- **git**: A version control system for cloning and managing repositories.
- **ffmpeg**: A multimedia framework needed for handling video processing.
- **Visual Studio 2022 Runtimes**: Provides necessary libraries for running applications on Windows.
- **Nvidia CUDA 12.1.1 & cuDNN 8.9.7**: Required for GPU acceleration, enabling faster computation.

## Installation Instructions

*This setup is optimized for systems with a GPU.*

### Step 1: Create and Activate a Conda Environment

1. Open the Anaconda prompt. This is a command-line interface for managing Conda environments.
2. Run the following commands to create and activate a new environment:

```bash
conda create -n dlcam-win python=3.10
conda activate dlcam-win
```

### Step 2: Clone the Repository

Use Git to clone the project repository to your local machine:

```bash
git clone https://github.com/KeyStrokeVII/DLCam-Win.git
cd DLCam-Win
```

### **Step 3: Download the Required Models**

1. Download these pre-trained models, which are essential for the application's functionality:
    
    - [GFPGANv1.4](https://huggingface.co/hacksider/deep-live-cam/resolve/main/GFPGANv1.4.pth)
    - [inswapper_128_fp16.onnx](https://huggingface.co/hacksider/deep-live-cam/resolve/main/inswapper_128_fp16.onnx)

3. Move the downloaded files to the `models` folder in the `DLCam-Win` directory. This ensures the application can access them during execution.

### **Step 4: Install Project Dependencies**

1. Install the necessary Python libraries specified in the requirements.txt file:

    ```bash
   pip install -r requirements.txt
   ```

## Enable GPU Acceleration (CUDA)

*Utilize your NVIDIA GPU to speed up processing.*

### **CUDA Execution Provider Setup (Nvidia GPUs)**

1. **Install CUDA Toolkit 12.1.1**: Download and install CUDA Toolkit version 12.1.1 from the NVIDIA website if you have not.  This toolkit is essential for enabling GPU computation.

2. **Install ONNX Runtime with GPU Support**:

   ```bash
   pip uninstall onnxruntime onnxruntime-gpu
   pip install onnxruntime-gpu==1.16.3
   ```

3. **Run with CUDA**:

   ```bash
   python run.py --execution-provider cuda
   ```

*The --execution-provider cuda flag ensures the application uses the NVIDIA GPU for processing.*

## Running the Application Using a Batch File (Convenient Method)

*Create a batch file for easier execution*

### **Prerequisites for Batch File**

- **Add Conda to PATH Environment Variable**: Include the `condabin` directory in your system's PATH. This allows you to use `conda` commands directly in the Command Prompt. Typically found at `C:\Users\<YourUsername>\miniconda3\condabin`. (adjust the path based on your actual installation location).

### **Batch File Setup**

1. **Modify `run-cuda.bat`** in the `DLCam-Win` directory.

    ```batch
    @echo off
    REM Use the full path to activate Conda
    call C:\Users\<YourUsername>\miniconda3\condabin\conda.bat activate your_env_name

    REM Run the Python script with CUDA
    python run.py --execution-provider cuda

    REM Pause to keep the window open after execution
    pause
    ```

### **Instructions for `run-cuda.bat`**

- **Replace `<YourUsername>`**: Use your actual Windows username to ensure the batch file can find your Conda installation.
- **Verify Execution Provider**: Ensure `cuda` is a valid option in `run.py` to enable GPU acceleration.
- **Run the Batch File**: Double-click `run-cuda.bat` to execute. This will open a command prompt, activate the Conda environment, and run the application with CUDA support.

## Updating the Application

*Keep your application up-to-date with the latest changes.*

### **Adding the Upstream Repository (One-Time Setup)**

1. **Navigate to Local Repository**: Open your Command Prompt or Anaconda Prompt and navigate to your cloned `DLCam-Win` project directory:

    ```bash
    cd path/to/your/repository
    ```
    Replace `path/to/your/repository` with the actual path to where you cloned the `DLCam-Win` repository.

2. **Add Upstream Remote**: Add the original project repository as a remote named "upstream":

    ```bash
    git remote add upstream https://github.com/hacksider/Deep-Live-Cam.git
    ```
    This command adds a remote connection named "upstream" that points to the official repository.

### **Batch File for Updating (`update.bat`)**

1. **Modify `update.bat`** in the `DLCam-Win` directory.

    ```batch
    @echo off
    REM Navigate to the local Git repository
    cd path\to\your\repository
    REM Replace with your actual repository path!
    cd DLCam-Win

    REM Fetch updates from the upstream repository
    git fetch upstream

    REM Switch to the main branch
    git checkout main

    REM Merge changes from the upstream's main branch into the local main branch
    git merge upstream/main

    REM Push the merged changes to your origin repository (optional, only if you have your own fork and want to update it)
    git push origin main

    REM Pause to keep the command prompt open after execution
    pause
    ```

### **Instructions for `update.bat`**

- **Enter Repository Path**: **Crucially, you must edit the second line** `cd path\to\your\repository` in the `update.bat` file and replace `path\to\your\repository` with the **actual full path** to your `DLCam-Win` project directory on your system.  For example, if you cloned it to `C:\Users\YourUsername\Documents\DLCam-Win`, the line should be `cd C:\Users\YourUsername\Documents\DLCam-Win`.
- **Ensure Upstream is Set**: Make sure you have successfully run the "Adding the Upstream Repository" steps *once* before using `update.bat` for the first time.
- **Run `update.bat`**:  Whenever you want to update your local application to the latest version, simply double-click the `update.bat` file. This will:
    - Navigate to your project directory.
    - Fetch the latest changes from the official "upstream" repository.
    - Switch to the `main` branch of your local repository.
    - Merge the fetched updates from the upstream `main` branch into your local `main` branch.
    - (Optionally) Push these merged changes to your own remote repository (if you have forked the project on GitHub).
    - Pause the command prompt so you can review the output of the update process.

---

## Credits

-   [ffmpeg](https://ffmpeg.org/): for making video-related operations easy
-   [deepinsight](https://github.com/deepinsight): for their [insightface](https://github.com/deepinsight/insightface) project which provided a well-made library and models. Please be reminded that the [use of the model is for non-commercial research purposes only](https://github.com/deepinsight/insightface?tab=readme-ov-file#license).
-   [havok2-htwo](https://github.com/havok2-htwo): for sharing the code for webcam
-   [GosuDRM](https://github.com/GosuDRM): for the open version of roop
-   [pereiraroland26](https://github.com/pereiraroland26): Multiple faces support
-   [vic4key](https://github.com/vic4key): For supporting/contributing to this project
-   [kier007](https://github.com/kier007): for improving the user experience
-   [qitianai](https://github.com/qitianai): for multi-lingual support
-   and [all developers](https://github.com/hacksider/Deep-Live-Cam/graphs/contributors) behind libraries used in this project.
-   Footnote: Please be informed that the base author of the code is [s0md3v](https://github.com/s0md3v/roop)
-   All the wonderful users who helped make this project go viral by starring the repo ❤️

[![Stargazers](https://reporoster.com/stars/hacksider/Deep-Live-Cam)](https://github.com/hacksider/Deep-Live-Cam/stargazers)

## Contributions

![Alt](https://repobeats.axiom.co/api/embed/fec8e29c45dfdb9c5916f3a7830e1249308d20e1.svg "Repobeats analytics image")

## Stars to the Moon 🚀

<a href="https://star-history.com/#hacksider/deep-live-cam&Date">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=hacksider/deep-live-cam&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=hacksider/deep-live-cam&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=hacksider/deep-live-cam&type=Date" />
 </picture>
</a>
```
