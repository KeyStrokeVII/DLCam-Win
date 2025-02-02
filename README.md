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

##  Disclaimer

This deepfake software is designed to be a productive tool for the AI-generated media industry. It can assist artists in animating custom characters, creating engaging content, and even using models for clothing design.

We are aware of the potential for unethical applications and are committed to preventative measures. A built-in check prevents the program from processing inappropriate media (nudity, graphic content, sensitive material like war footage, etc.). We will continue to develop this project responsibly, adhering to the law and ethics. We may shut down the project or add watermarks if legally required.

- Ethical Use: Users are expected to use this software responsibly and legally. If using a real person's face, obtain their consent and clearly label any output as a deepfake when sharing online.

- Content Restrictions: The software includes built-in checks to prevent processing inappropriate media, such as nudity, graphic content, or sensitive material.

- Legal Compliance: We adhere to all relevant laws and ethical guidelines. If legally required, we may shut down the project or add watermarks to the output.

- User Responsibility: We are not responsible for end-user actions. Users must ensure their use of the software aligns with ethical standards and legal requirements.

By using this software, you agree to these terms and commit to using it in a manner that respects the rights and dignity of others.

Users are expected to use this software responsibly and legally. If using a real person's face, obtain their consent and clearly label any output as a deepfake when sharing online. We are not responsible for end-user actions.


---

Certainly! Here's the updated section without that part:

---

# Manual Installation for Windows with GPU ONLY!!!

Please be aware that the installation requires technical skills and is not for beginners. Consider downloading the prebuilt version.

## Installation

This setup is specifically for systems with a GPU and will utilize GPU acceleration.

### 1. Set up Your Platform

- Python (3.10 recommended)
- Anaconda or Miniconda
- pip
- git
- ffmpeg - `iex (irm ffmpeg.tc.ht)`
- Visual Studio 2022 Runtimes (Windows)

### 2. Create and Activate Conda Environment

```bash
conda create --name your_env_name python=3.10
conda activate your_env_name
```

### 3. Clone the Repository

```bash
git clone https://github.com/KeyStrokeVII/DLCam-Win.git
cd DLCam-Win
```

### 4. Download the Models

- GFPGANv1.4
- inswapper_128_fp16.onnx

Place these files in the "models" folder.

### 5. Install Dependencies

```bash
pip install -r requirements.txt
```

## GPU Acceleration

### CUDA Execution Provider (Nvidia)

- **Install For CUDA Toolkit 12.1.1**
- Install dependencies:

```bash
pip uninstall onnxruntime onnxruntime-gpu
pip install onnxruntime-gpu==1.16.3
```

- **Usage:**

```bash
python run.py --execution-provider cuda
```

## To run the application using a batch file, follow these steps

### Prerequisites

 **Add Conda to PATH**: Add the `condabin` directory from your Conda installation to your system's PATH environment variable. Typically, it looks like `C:\Users\<YourUsername>\miniconda3\condabin`.

### Batch File Setup

Edit a batch file (e.g., `run-cuda.bat`) with the following content:

```batch
@echo off
REM Use the full path to activate Conda
call C:\Users\<YourUsername>\miniconda3\condabin\conda.bat activate your_env_name

REM Run the Python script with CUDA
python run.py --execution-provider cuda

REM Pause to keep the window open
pause
```

### Instructions

1. **Replace `<YourUsername>`**: Substitute with your actual Windows username.
2. **Replace `your_env_name`**: Substitute with the name of your Conda environment.
3. **Verify Execution Provider**: Ensure `cuda` is a valid option for the `--execution-provider` argument in `run.py`.

### Troubleshooting

- If you encounter errors related to the execution provider, check the script's documentation for valid options.

---

Let me know if you need further adjustments!

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


