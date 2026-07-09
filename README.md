# Semiconductor Density of States & Fermi–Dirac Distribution (MATLAB)

A MATLAB project for simulating the **Density of States (DOS)** and the **Fermi–Dirac distribution** in semiconductors. The project demonstrates how available energy states and electron occupation vary near the band edges and compares different semiconductor materials using their effective masses.

---

## Overview

Understanding the Density of States (DOS) and the Fermi–Dirac distribution is fundamental to semiconductor physics and electronic device modeling. This project provides a computational implementation of these concepts using MATLAB and serves as a foundation for more advanced semiconductor simulations.

The current implementation supports multiple semiconductor materials, including:

* Silicon (Si)
* Gallium Arsenide (GaAs)
* Gallium Nitride (GaN)

---

## Features

* Analytical calculation of the Density of States (DOS)
* Material comparison using realistic effective masses
* Fermi–Dirac distribution at a specified temperature
* Occupied electron states, (g_c(E)f(E))
* Occupied hole states, (g_v(E)[1-f(E)])
* Numerical estimation of carrier concentrations
* Publication-quality MATLAB figures
* Well-documented and modular code

---

## Physics Background

The conduction-band density of states is

[
g_c(E)=\frac{1}{2\pi^2}\left(\frac{2m_e^*}{\hbar^2}\right)^{3/2}\sqrt{E-E_c}
]

The valence-band density of states is

[
g_v(E)=\frac{1}{2\pi^2}\left(\frac{2m_h^*}{\hbar^2}\right)^{3/2}\sqrt{E_v-E}
]

The occupation probability follows the Fermi–Dirac distribution

[
f(E)=\frac{1}{1+\exp\left(\frac{E-E_F}{kT}\right)}
]

---

## Simulation Features

* Density of States (DOS)
* Fermi–Dirac Distribution
* Occupied Electron States
* Occupied Hole States
* Carrier Concentration Calculation
* Material Comparison (Si, GaAs, GaN)

---


## Applications

This project is useful for studying:

* Semiconductor Physics
* Electronic Devices
* Solid-State Physics
* Quantum Mechanics
* Nanoelectronics
* Computational Physics
* Device Modeling

---

## Future Improvements

* Temperature-dependent simulations
* Intrinsic and doped semiconductors
* Fermi level shift with doping
* Effective density of states ((N_C) and (N_V))
* Carrier concentration versus temperature
* Band diagrams
* PN junction simulation
* MOS capacitor (MOSCAP) modeling
* MOSFET device simulation
* Solar cell modeling
* Silvaco TCAD validation

---

## Author

**Mostafa Ahmed**

Physics Teaching Assistant
Faculty of Engineering, Benha University

Research Interests:

* Semiconductor Physics
* Semiconductor Devices
* Solar Cells
* Computational Physics
* Electronic Device Modeling
* MATLAB
* Python
* Silvaco TCAD

---s project is licensed under the MIT Licen
