---
layout: archive
title: "Research"
permalink: /research/
author_profile: false
---

*Data transparency in the absence of trust* has massive implications for security and privacy. On the one hand, increased transparency can enable new functionalities and use cases for securing ecosystems. On the other, increased transparency can lead to serious and sometimes subtle privacy violations. The goal of our research group is to design tools that can be used to navigate this tradeoff.


## Privacy-preserving data sharing
Sometimes, parties *want* to share data-driven insights with each other, while still protecting sensitive attributes of their data. A major use case is information sharing between enterprises to protect against emerging cybersecurity threats (e.g., ISACs, ISAOs). Today, such sharing is limited due to privacy concerns and lack of trust. Our goal is to develop techniques for sharing complex, high-dimensional data that reveals important patterns while hiding sensitive attributes of the data. One part of our research in this direction studies the potential of generative adversarial networks (GANs). GANs are a breakthrough deep learning technique for learning complex generative models from data. Our group studies the fundamentals of GANs (e.g. improving diversity, interpretability, and stability), as well as their applications, particularly for sharing privacy-preserving datasets.

## Privacy-preserving communication
Decentralized networks often arise in settings of extreme duress, be it political, financial, or physical. However, while useful for democratizing communication, these decentralized networks can  facilitate privacy and security vulnerabilities, due to the ease with which adversaries can monitor such networks. Relevant application domains include peer-to-peer micropayment networks, computer networks, and social media (e.g., Yik Yak, Secret). Our goal is to understand fundamental limits and algorithms for providing privacy and security guarantees in such high-stress environments, particularly against distributed adversaries who can  compromise substantial fractions of the network. <!--In particular, I am interested in a range of settings, including low-connectivity scenarios (e.g., when governments turn off key communication infrastructure like the Internet and cellular networks). I am also interested in private information search and retrieval over publicly-available databases, with the goal of moving toward provably privacy-preserving search engines.-->


## Trustless data storage
Blockchains are useful for storing data in distributed systems with limited trust. We are designing <i>scalable</i> blockchains that account for resource constraints in the network and in individual devices. This work ranges from protecting users' privacy to building faster consensus algorithms. A common theme in this work relies on explicitly modeling device or network behavior, and using these models to design more efficient algorithms with theoretical guarantees.