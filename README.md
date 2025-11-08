# Linear Control Systems — Final Project

This repository contains the final project for the **Linear Control Systems** course at **K. N. Toosi University of Technology**, instructed by **Prof. Hamidreza Taghirad**.  
The project focuses on the **analysis, modeling, identification, and controller design** of a linear dynamic system using **MATLAB** and **Simulink**.

---

## 📑 Table of Contents
1. [Project Overview](#project-overview)
2. [Objectives](#objectives)
3. [Key Results and Analysis](#key-results-and-analysis)
4. [Repository Structure](#repository-structure)
5. [Quick Access Tables](#quick-access-tables)

---

## 📘 Project Overview
This project investigates the **frequency response, transfer function estimation, stability, and controller design** of a linear control system.  

The workflow includes:
- Extracting and analyzing frequency-domain data (`Data.mat`).
- Estimating the **transfer function** using MATLAB’s **System Identification Toolbox**.
- Evaluating system stability using **Bode diagrams**, **Root Locus**, and **Routh-Hurwitz criterion**.
- Designing **PID, PD, and Lead-Lag controllers** to meet performance requirements.
- Validating results through **Simulink simulation**, **MATLAB analysis**, and a **technical presentation**.

---

## 🎯 Objectives
- Identify a suitable **transfer function model** from experimental frequency response data.  
- Determine system **type, order, and delay characteristics**.  
- Analyze system **stability and damping behavior** using **root locus** and **Bode plots**.  
- Design **controllers (PI, PD, and Lead-Lag)** to achieve desired:
  - Settling time under 10 s  
  - Overshoot < 15%  
  - Steady-state error < 2%  
- Compare the **open-loop and closed-loop responses** before and after controller implementation.  

---

## 📊 Key Results and Analysis

| Aspect | Method / Tool | Key Findings |
|:--|:--|:--|
| **Transfer Function Estimation** | System Identification Toolbox (`tfest`) | Accurate estimation of a 3-pole, 1-zero system matching experimental data |
| **System Type** | Frequency Response & Root Locus | Type 1 (one integrator) — ensures zero steady-state error to step input |
| **Delay Analysis** | Bode Plot Phase Slope | Approx. **0.56 s delay** observed from phase variation |
| **Stability** | Routh–Hurwitz Criterion | Stable for **K < 27.93**, unstable beyond |
| **Controller Design** | `sisotool`, `lead`, `lag`, `pd`, `pi` | Achieved **overshoot ≈ 6%**, **settling ≈ 6 s**, improved damping ratio |
| **Final Controller** | Lead–Lag Combination | Balanced transient response with minimal steady-state error |
| **Performance** | Step & Ramp Response Analysis | Ramp tracking improved; step response overshoot reduced from 60% → 13% |

> ✅ The designed Lead–Lag controller met all control objectives — improving system speed, reducing overshoot, and maintaining practical control effort.

---

## 🧩 Repository Structure
```bash
linear-control-systems-final-project/
├─ MATLAB/
│  ├─ Data.mat                      # Frequency response data
│  ├─ projectQone.m                 # Question 1 – Frequency response plots
│  ├─ projectQthree.m               # Question 3 – Transfer function estimation
│  ├─ projectQfive.m                # Question 5 – Root locus & stability analysis
│  ├─ projectQsix.m                 # Question 6 – Controller design (Lead-Lag)
│  ├─ projectQsixdasti.m            # Manual verification for controller design
│  ├─ projectQseven.m               # Question 7 – Step/Ramp tracking test
│
├─ simulink/
│  └─ projectQseven.slx             # Simulink model for final controller verification
│
├─ report/
│  └─ lCSproject_mobinayousefimoghaddam_40124093.pdf
│
└─ presentation/
    └─ LCS-final-project-presentation.pptx

```
## 📦 Quick Access

### 🧮 MATLAB Scripts
| File | Description |
|------|--------------|
| [projectQone.m](MATLAB/projectQone.m) | Plots Bode diagrams (magnitude & phase) using frequency response data from `Data.mat`. |
| [projectQthree.m](MATLAB/projectQthree.m) | Estimates system transfer function via MATLAB **System Identification Toolbox**. |
| [projectQfive.m](MATLAB/projectQfive.m) | Performs **Routh–Hurwitz stability analysis** and **root locus** plotting. |
| [projectQsix.m](MATLAB/projectQsix.m) | Designs **Lead–Lag and PD controllers** using `sisotool` and `rlocus`. |
| [projectQsixdasti.m](MATLAB/projectQsixdasti.m) | Manual (hand-calculated) validation of controller results. |
| [projectQseven.m](MATLAB/projectQseven.m) | Simulates closed-loop system performance and tracks step/ramp inputs. |
| [Data.mat](MATLAB/Data.mat) | Frequency response dataset used throughout the project. |

---

### ⚙️ Simulink Model
| Model | Description |
|--------|-------------|
| [projectQseven.slx](simulink/projectQseven.slx) | Simulink model for final **controller validation and response analysis**. |

---

### 📄 Documentation
| File | Description |
|------|--------------|
| [lCSproject_mobinayousefimoghaddam_40124093.pdf](report/lCSproject_mobinayousefimoghaddam_40124093.pdf) | Full project report — methodology, analysis, and MATLAB/Simulink results. |
| [LCS-final-project-presentation.pptx](presentation/LCS-final-project-presentation.pptx) | Presentation slides summarizing project objectives and outcomes. |

