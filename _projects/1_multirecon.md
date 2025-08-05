---
layout: page
title: MultiRecon
description: Machine Learning for Multimodal Medical Image Reconstruction
img: assets/img/multirecon/ct-mri-pet.png
importance: 1
category: work
related_publications: false
---

<div class="row">
    {% include figure.liquid loading="eager" path="assets/img/multirecon/ct-mri-pet.png" title="MultiRecon" class="img-fluid rounded z-depth-1" %}
</div>


## Key Features

- **Joint Reconstruction Models**  
  Deep learning architectures that simultaneously reconstruct PET/CT, PET/MRI and multi-energy CT images, exploiting shared anatomical and functional information.

- **Dose Reduction**  
  Algorithms designed to maintain diagnostic image quality at lower radiation doses, contributing to safer imaging protocols.

## How It Works

1. **Multichannel Varational Autoencoders (VAEs)**  
   Multichannel VAEs to generate multiple images from a single latent variable combined with iterative reconstruction algorithms, thus allowing the information to be shared between the channels.

3. **Multichannel Diffusion Models (DMs)**  
   Combining iterative reconstruction algorithms with multichannel DMs to sample multiple images simultanesouly while taking into account inter-channel information.




## Core Team

- Alexandre Bousse (LaTIM, Project Lead)  
- B. Sixou (CREATIS)
- V. Maxim (CREATIS)  
- Claude Comtat (SHFJ)
- Florent Sureau (SHFJ)
- Catherine Chez-Le Rest (CHU Poitier)


## Publications


<div class="">
  {% bibliography   -q @*[project=multirecon] %}
</div>



---

For more details, visit our [project website](https://multirecon.github.io) or check out the full [Publications](https://multirecon.github.io/publications) list on this site.



