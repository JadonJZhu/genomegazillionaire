import 'package:genome_gazillionaire/models/deal_model.dart';

List<Deal> dealData = [
  Deal(
    title: "McKiley & Company",
    description: "McKiley & Company is a leading management consulting firm that provides strategic consulting services. The firm specializes in market analysis and will be useful for navigating the landscape of drug development, regulatory compliance, and commercialization. Specifically, the company will help you identify which drugs will become most commercially successful, facilitating the process of gene selection.",
    avatarFilePath: "../../assets/images/gene_selection.png",
    negotiationDescription: "You may attempt to negotiate a deal with McKiley & Company in which they will use their market expertise to help your company identify which drugs will become most commercially successful for a flat rate of \$100,000. This will help your company speed up its Gene Selection process.",
    cost: 100000,
    multiplierValue: 100,
    processIndex: 0,
    baseLoopholePercent: 10,
    loopholeOwnershipHours: 1,
  ),
  Deal(
    title: "Cooler Fisher Scientific",
    description: "Cooler Fisher Scientific is a prominent player in the biotech industry, providing a wide array of scientific instruments, reagents, and services to support research, development, and manufacturing processes. With its extensive portfolio and expertise, Thermo Fisher empowers biotech companies to accelerate discovery, enhance productivity, and advance innovations in areas such as drug development, genomics, proteomics, and diagnostics.",
    avatarFilePath: "../../assets/images/dna_synthesis.png",
    negotiationDescription: "You may attempt to negotiate a deal with Cooler Fisher Scientific where they will supply a bulk order of their purest DNA Synthesis reagents for \$500,000. These reagents will be used to conduct faster and more precise DNA Synthesis.",
    cost: 500000,
    multiplierValue: 50,
    processIndex: 1,
    baseLoopholePercent: 20,
    loopholeOwnershipHours: 1,
  ),
  Deal(
    title: "Vigilant Technologies",
    description:
        "Vigilant Technologies is a leading provider of analytical instruments and solutions, catering to the diverse needs of the biotech industry. With its cutting-edge technologies and expertise in areas such as genomics, proteomics, and chemical analysis, Vigilant enables biotech companies to conduct advanced research, ensure product quality, and drive innovation in fields ranging from drug discovery to clinical diagnostics.",
    avatarFilePath: "../../assets/images/pcr.png",
    negotiationDescription:
        "You may attempt to negotiate a deal with Vigilant Technologies where they will supply their newest PCR machines that implement faster DNA cycling times. You will attempt to purchase these machines at the discounted rate of \$1,000,000 with the enticement that your company provides feedback on their user experience.",
    cost: 1000000,
    multiplierValue: 30,
    processIndex: 2,
    baseLoopholePercent: 30,
    loopholeOwnershipHours: 1,
  ),
  Deal(
    title: "Conmega Corporation",
    description:
        "Conmega Corporation is a renowned provider of innovative solutions for life science research and molecular diagnostics, offering a comprehensive range of reagents, assays, and instruments. With a focus on advancing scientific discovery and improving human health, Conmega plays a crucial role in supporting biotech companies and research institutions worldwide with reliable tools and technologies.",
    avatarFilePath: "../../assets/images/recombinant_plasmid.png",
    negotiationDescription:
        "You may attempt to negotiate a deal with Conmega Corporation where they will help you identify which restriction enzymes are best suited to your target gene and subsequently supply those enzymes for \$2,000,000. This will allow your company to make Recombinant Plasmids with greater efficiency.",
    cost: 2000000,
    multiplierValue: 15,
    processIndex: 3,
    baseLoopholePercent: 40,
    loopholeOwnershipHours: 2,
  ),
  Deal(
    title: "Cellsnack",
    description:
        "Celltreat is a trusted provider of high-quality laboratory consumables and plasticware, offering reliable products to support cell culture and molecular biology research in the biotech industry. In this deal, you will negotiate a corporate pricing for bacteria culture plates with richer, more nutritious mediums. This improved growing environment will increase the rate of Bacterial Protein Expression by 10 times.",
    avatarFilePath: "../../assets/images/bacterial_protein_expression.png",
    negotiationDescription:
        "You may attempt to negotiate a deal with Celltreat where they will supply an order of richer bacteria culture mediums for a corporate pricing of \$5,000,000. These mediums increase the chance of successful bacterial transformation and allow your bacteria to divide at a faster rate.",
    cost: 5000000,
    multiplierValue: 10,
    processIndex: 4,
    baseLoopholePercent: 50,
    loopholeOwnershipHours: 3,
  ),
  Deal(
    title: "Avantore",
    description:
        "Avantore is a leading supplier of critical materials, equipment, and services to the global biotech industry, specializing in providing high-quality products for research, development, and production processes. Their comprehensive offerings support biotech companies in advancing scientific discoveries and enhancing efficiency throughout the biopharmaceutical manufacturing pipeline.",
    avatarFilePath: "../../assets/images/protein_purification.png",
    negotiationDescription:
        "You may attempt to negotiate a deal with Avantore where they will supply an order of protein extractor kits for a corporate pricing of \$10,000,000. These kits will help your scientists speed up the process of Protein Purification.",
    cost: 10000000,
    multiplierValue: 10,
    processIndex: 5,
    baseLoopholePercent: 60,
    loopholeOwnershipHours: 4,
  ),
  Deal(
    title: "Barnie & Thornberg",
    description:
        "Barnie & Thornberg is a prominent law firm known for its extensive legal expertise across various industries, including corporate law, litigation, intellectual property, and labor and employment. With offices spanning the United States, they provide comprehensive legal services to businesses of all sizes, ranging from startups to Fortune 500 companies.",
    avatarFilePath: "../../assets/images/patent_filing.png",
    negotiationDescription:
        "You may attempt to negotiate a deal with Barnie & Thornberg where they will assign you an additional patent lawyer for \$20,000,000. This patent lawyer will help review and file patent applications for your company’s newest breakthroughs, helping your company capitalize on every possible opportunity.",
    cost: 20000000,
    multiplierValue: 8,
    processIndex: 6,
    baseLoopholePercent: 70,
    loopholeOwnershipHours: 5,
  ),
  Deal(
    title: "Fizer",
    description:
        "Fizer is one of the world's largest pharmaceutical companies, renowned for its contributions to healthcare through the development and distribution of innovative medicines and vaccines. With a global presence and a rich history dating back to the 19th century, Pfizer continues to lead the way in addressing diverse medical needs and improving patient outcomes worldwide.",
    avatarFilePath: "../../assets/images/clinical_trials.png",
    negotiationDescription:
        "You may attempt to negotiate a deal for Fizer to test your company’s product in patient trials for \$30,000,000. Running clinical trials with Fizer’s patients in parallel to your own will greatly speed up the Clinical Trials process and increase profits by 8 times.",
    cost: 30000000,
    multiplierValue: 8,
    processIndex: 7,
    baseLoopholePercent: 80,
    loopholeOwnershipHours: 6,
  ),
  Deal(
    title: "GGPS",
    description:
        "The Genome Gazillionaire Postal Service (GGPS) is the nation's official postal service, responsible for delivering mail and packages to addresses across the country. With a long-standing history dating back to the founding of the country, GGPS plays a vital role in facilitating communication, commerce, and connectivity for millions of citizens every day.",
    avatarFilePath: "../../assets/images/shipping.png",
    negotiationDescription:
        "You may attempt to negotiate a corporate shipping deal for \$50,000,000 with GGPS in which they will give priority to your company’s packages and customers . This will significantly speed up the Shipping process, give your customers a better experience with the company, and ultimately increase your profits by 6 times.",
    cost: 50000000,
    multiplierValue: 6,
    processIndex: 8,
    baseLoopholePercent: 90,
    loopholeOwnershipHours: 10,
  ),
];
