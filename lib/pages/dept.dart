import 'package:flutter/material.dart';
// import 'package:welcome/main.dart';
import 'package:welcome/pages/drawer.dart';

class DepPage extends StatelessWidget {
  const DepPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Wollo University Department List',
            style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 114, 90, 208),
        elevation: 0,
      ),
      drawer: const DrawerPage(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              _buildListItem(
                context,
                'assets/field_image/Architecture_engineering.jpg',
                'Architecture engineering',
                """Architecture engineering is a branch of engineering that focuses on the design and construction
of buildings and other structures. Architecture engineers use their knowledge of engineering
principles, materials science, and construction methods to design safe and functional buildings
that meet the needs of their users.
Some of the areas where architecture engineering is applied include:
1. Structural Engineering: Architecture engineers design and analyze the structural
components of buildings, such as beams, columns, and foundations.
2. Building Systems: Architecture engineers design the mechanical, electrical, plumbing,
and other building systems that provide essential services to buildings.
3. Sustainable Design: Architecture engineers design buildings with sustainability in mind,
incorporating features such as green roofs, rainwater harvesting, and energy-efficient
systems.
4. Building Information Modeling (BIM): Architecture engineers use BIM software to create
digital models of buildings that simulate their performance and allow for collaboration
between designers and contractors.
5. Historic Preservation: Architecture engineers work to preserve historic buildings, using
their knowledge of materials and construction techniques to repair and restore
buildings while maintaining their historic character.
Architecture engineers work in a variety of roles, including project managers, structural
engineers, building systems engineers, and sustainability specialists. They may work for
architecture firms, construction companies, or government agencies.""",
              ),
              _buildListItem(
                context,
                'assets/field_image/Biomedical_engineering.jpg',
                'Biomedical engineering',
                """Biomedical engineering is a field of engineering that involves the application of engineering
principles and design concepts to biology and medicine. Biomedical engineers use their
knowledge of biology, medicine, and engineering to design and develop medical devices,
equipment, and systems that improve patient care and outcomes. Some of the areas that
biomedical engineers work in include:
1. Medical Imaging: This involves the design and development of medical imaging systems,
such as X-ray machines, MRI machines, and CT scanners, that can provide physicians
with detailed images of the inside of the body.
2. Biomechanics: This involves the study of the mechanical properties of biological
systems, such as bones, muscles, and joints, and the design and development of devices
and systems that can assist or replace these systems.
3. Biomaterials: This involves the development of materials that are compatible with
biological systems, such as implantable medical devices, artificial joints, and dental
implants.
4. Medical Devices: This involves the design and development of medical devices that can
monitor or treat medical conditions, such as pacemakers, insulin pumps, and prosthetic
limbs.
5. Tissue Engineering: This involves the design and development of artificial tissues and
organs that can be used to replace or repair damaged tissues and organs.
Biomedical engineers work in a wide range of industries, including healthcare, medical device
manufacturing, research and development, and government agencies. They may work in a
variety of roles, including design engineers, research and development engineers, quality
control engineers, and regulatory affairs specialists.""",
              ),
              _buildListItem(
                context,
                'assets/field_image/Chemical_engineering.jpg',
                'Chemical engineering',
                """Chemical engineering is a branch of engineering that applies principles of chemistry, physics,
and mathematics to design, develop, and optimize processes for the production of chemicals,
fuels, pharmaceuticals, and materials. Chemical engineers work on a wide range of industrial
processes, including:
1. Chemical Production: Chemical engineers design and develop processes for the
production of chemicals, including petrochemicals, polymers, and specialty chemicals.
2. Process Control: Chemical engineers develop and implement control systems for
industrial processes, including feedback control systems, model-based control systems,
and optimization systems.
3. Energy Production: Chemical engineers design and develop processes for the production
of energy, including fossil fuels, biofuels, and renewable energy sources.
4. Materials Science: Chemical engineers develop materials with specific properties, such
as strength, durability, and biocompatibility, for use in a wide range of applications.
5. Environmental Protection: Chemical engineers develop and implement processes for the
reduction of emissions and the treatment of waste products, to protect the
environment and meet regulatory requirements.
Chemical engineers work in a variety of industries, including chemical production, energy
production, pharmaceuticals, materials science, and environmental protection. They may work
in a variety of roles, including process engineers, plant engineers, research and development
engineers, and environmental engineers.
""",
              ),
              _buildListItem(
                context,
                'assets/field_image/civil.jpg',
                'civil engineering',
                """Civil engineering is a field of engineering that deals with the design, construction, and
maintenance of infrastructure and building projects. Civil engineers work on a wide range of
projects, including roads, bridges, tunnels, airports, buildings, water supply and drainage
systems, and waste management facilities. Some of the areas that civil engineers work in
include:
Structural Engineering: This involves the design of structures, such as buildings and bridges, and
the analysis of their strength, stability, and safety.
Geotechnical Engineering: This involves the study of soil and rock mechanics, and the design of
foundations, retaining walls, and other geotechnical structures.
Transportation Engineering: This involves the design of transportation systems, such as
highways, airports, and railroads, and the analysis of traffic flow and safety.
Water Resources Engineering: This involves the design of water supply and drainage systems,
such as dams, canals, and wastewater treatment plants.
Environmental Engineering: This involves the design of systems to protect and improve the
environment, such as air and water pollution control systems, and the remediation of
contaminated sites.
Civil engineers work in a wide range of industries, including construction, government,
consulting, and academia. They may work in a variety of roles, including design engineers,
project managers, site engineers, and construction supervisors.""",
              ),
              _buildListItem(
                context,
                'assets/field_image/cotom.jpg',
                'COTM',
                """Construction management is a field that involves overseeing and coordinating the planning,
design, and construction of building projects. Construction managers work with architects,
engineers, contractors, and other professionals to ensure that projects are completed on time,
within budget, and to the required quality standards. Some of the areas that construction
managers work in include:
1. Project Planning and Scheduling: This involves the development of project plans,
schedules, and budgets, as well as the coordination of resources and personnel.
2. Site Management: This involves the management of construction sites, including the
coordination of work activities, safety management, and the management of
subcontractors and suppliers.
3. Contract Management: This involves the negotiation and management of contracts with
clients, contractors, and suppliers.
4. Quality Control: This involves the implementation of quality control programs to ensure
that construction work meets the required quality standards.
5. Risk Management: This involves the identification and management of risks associated
with construction projects, such as safety risks, cost overruns, and delays.
Construction managers work in a wide range of industries, including construction, real estate
development, and infrastructure development. They may work in a variety of roles, including
project managers, site managers, construction supervisors, and contract administrators.""",
              ),
              _buildListItem(
                context,
                'assets/field_image/computer_science.jpg',
                'computer science',
                """Computer science is a field of study that focuses on the theory, design, and application of computer
technology. It covers a wide range of topics, including:
Algorithms and Data Structures: This involves the study of efficient algorithms and data structures for
solving computational problems.
Programming Languages and Software Development: This involves the design and implementation of
programming languages and software development tools.
Operating Systems: This involves the study of the design and implementation of operating systems,
which are the software systems that manage computer hardware and software resources.
Computer Architecture: This involves the study of the design and implementation of computer systems,
including processors, memory, and input/output devices.
Artificial Intelligence: This involves the study of intelligent agents and the development of algorithms
and systems that can learn and reason.
Computer Networks: This involves the study of the design and implementation of computer networks,
including protocols for communication and data transfer.
Databases and Information Retrieval: This involves the study of databases, data modeling, and
information retrieval techniques.""",
              ),
              _buildListItem(
                context,
                'assets/field_image/electrical_enginering.jpg',
                'electrical engineering',
                """Electrical engineering is a field of engineering that deals with the design, development, and
maintenance of electrical and electronic systems. Electrical engineers work on a wide range of
projects, including the design of electric motors, power generation and distribution systems,
communication systems, and electronic devices. Some of the areas that electrical engineers
work in include:
Power and Energy Systems: This involves the design and implementation of electrical power
generation, transmission, and distribution systems, including renewable energy sources such as
solar and wind power.
Control Systems: This involves the design of systems that regulate and control the behavior of
other systems, such as feedback control systems used in manufacturing or industrial processes.
Electronics: This involves the design and development of electronic devices, including
microprocessors, sensors, and communication systems.
Computer Engineering: This involves the design and development of computer hardware and
software systems, including computer networks and embedded systems.
Electrical engineers work in a wide range of industries, including energy, telecommunications,
aerospace, and healthcare. They may work in a variety of roles, including design engineers,
project managers, research and development engineers, and quality control engineers.
""",
              ),
              _buildListItem(
                context,
                'assets/field_image/Fashion_design.jpg',
                'Fashion design',
                """Fashion design is an interdisciplinary field that combines principles of engineering and design
to create functional and innovative clothing and accessories. Fashion design engineers use their
knowledge of materials science, mechanics, and manufacturing to develop new technologies
and techniques for the fashion industry.
Some areas where fashion design engineering is applied include:
1. Smart Clothing: Fashion design engineers use electronics, sensors, and data processing
to create clothing that can monitor health, fitness, and environmental factors.
2. Sustainable Fashion: Fashion design engineers use sustainable and eco-friendly
materials and manufacturing processes to reduce the environmental impact of the
fashion industry.
3. Wearable Technology: Fashion design engineers develop wearable technology, such as
smartwatches, fitness trackers, and augmented reality glasses.
4. Textile Manufacturing: Fashion design engineers develop new technologies and
techniques for textile manufacturing, such as 3D printing, laser cutting, and digital
printing.
5. Fashion Design Software: Fashion design engineers create software for pattern making,
3D modeling, and product design.
Fashion design engineers work in a variety of roles, including product designers, research and
development engineers, manufacturing engineers, and software developers. They may work in
the fashion industry, technology companies, or research institutions.
""",
              ),
              _buildListItem(
                context,
                'assets/field_image/Food_engineering.jpg',
                'Food engineering',
                """Food engineering is a branch of engineering that focuses on the design and development of
food processing and preservation systems. Food engineers apply principles of engineering,
chemistry, and microbiology to develop safe and efficient systems for the production,
preservation, and packaging of food products. Some of the areas that food engineers work in
include:
1. Food Processing: Food engineers develop and optimize processes for the production of
food products, including beverages, dairy products, baked goods, and meat products.
2. Food Preservation: Food engineers develop and implement preservation methods to
extend the shelf life of food products, including refrigeration, freezing, drying, and
packaging.
3. Food Safety: Food engineers design and implement safety systems to ensure the safety
and quality of food products, including hazard analysis and critical control point (HACCP)
programs.
4. Food Packaging: Food engineers design and develop packaging materials and systems
that protect food products and extend their shelf life.
5. Food Waste Reduction: Food engineers work to develop processes and systems that
reduce food waste and promote sustainability in the food industry.
Food engineers work in a variety of industries, including food processing, packaging, and
equipment manufacturing. They may work in a variety of roles, including process engineers,
product development engineers, quality control engineers, and regulatory affairs specialists.""",
              ),
              _buildListItem(
                context,
                'assets/field_image/Garment_engineering.jpg',
                'Garment engineering',
                """Garment engineering is a branch of engineering that focuses on the design, development, and
manufacturing of garments. Garment engineers apply principles of engineering and design to
develop new manufacturing techniques and technologies that improve the efficiency and
quality of garment production.
Some of the areas where garment engineering is applied include:
1. Pattern Making: Garment engineers create patterns that serve as the basis for garment
production. They use computer-aided design (CAD) software to develop and refine
patterns.
2. Garment Construction: Garment engineers develop techniques and technologies for
cutting, sewing, and assembling garments. They also develop methods for attaching
zippers, buttons, and other closures.
3. Fabric Selection: Garment engineers work with textile suppliers to select fabrics that
meet the needs of a particular garment. They consider factors such as fabric weight,
texture, and durability.
4. Quality Control: Garment engineers develop quality control methods and systems to
ensure that garments meet customer specifications and regulatory requirements.
5. Manufacturing Efficiency: Garment engineers develop methods to optimize garment
production, such as using automation to reduce labor costs, or improving supply chain
management to reduce lead times.
Garment engineers work in a variety of roles, including product development engineers,
process engineers, quality control engineers, and research scientists. They may work in the
garment industry, manufacturing companies, or research institutions.""",
              ),
              _buildListItem(
                context,
                'assets/field_image/hydrolics.jpg',
                'Water engineering',
                """Water engineering is a field of engineering that involves the design, construction, and
maintenance of water-related infrastructure and systems. Water engineers work on projects
that relate to the management, distribution, and treatment of water resources. Some of the
areas that water engineers work in include:
1. Water Supply Systems: This involves the design and construction of systems for the
collection, treatment, and distribution of water for domestic and industrial use.
2. Wastewater Treatment: This involves the design and construction of facilities to treat
and dispose of wastewater from homes, businesses, and industries.
3. Stormwater Management: This involves the design and construction of systems to
manage the flow of stormwater, including drainage systems, flood control measures,
and erosion control.
4. Water Resources Management: This involves the management of water resources,
including surface and groundwater, to ensure their sustainability and equitable use.
5. Coastal and Marine Engineering: This involves the design and construction of structures
to protect coastlines and manage the impacts of waves, tides, and sea-level rise.
Water engineers work in a wide range of industries, including water utilities, environmental
consulting firms, and government agencies. They may work in a variety of roles, including
design engineers, project managers, water treatment plant operators, and environmental
engineers.""",
              ),
              _buildListItem(
                context,
                'assets/field_image/hydrolics.jpg',
                'Hydraulics engineering',
                """Hydraulics engineering is a field of engineering that involves the study of fluids and their
behavior under different conditions. Hydraulics engineers use this knowledge to design and
operate hydraulic systems, which are used in a wide range of industries, including construction,
agriculture, manufacturing, and transportation. Some of the areas that hydraulics engineers
work in include:
1. Design of Hydraulic Systems: This involves the design of hydraulic systems, including
pumps, valves, actuators, and piping systems, to meet specific requirements.
2. Analysis of Hydraulic Systems: This involves the use of mathematical models to analyze
the behavior of hydraulic systems under different operating conditions, such as changes
in flow rate, pressure, and temperature.
3. Maintenance of Hydraulic Systems: This involves the maintenance of hydraulic systems,
including regular inspections, repairs, and replacements of components.
4. Testing of Hydraulic Systems: This involves the testing of hydraulic systems to ensure
that they meet the required performance standards, such as flow rate, pressure, and
efficiency.
5. Research and Development: This involves the development of new hydraulic
technologies, such as high-efficiency pumps and valves, and the optimization of existing
technologies to improve their performance and reduce their environmental impact.
Hydraulics engineers work in a wide range of industries, including construction, manufacturing,
and transportation. They may work in a variety of roles, including design engineers, project
managers, maintenance engineers, and research and development engineers.
""",
              ),
              _buildListItem(
                context,
                'assets/field_image/industrial_enginering.jpg',
                'Industrial engineering',
                """Industrial engineering is a field of engineering that focuses on optimizing complex systems,
processes, and organizations to improve efficiency and productivity. Industrial engineers apply
principles of mathematics, physics, and psychology to design, develop, implement, and improve
systems and processes that involve people, materials, equipment, energy, and information.
Some of the areas that industrial engineers work in include:
1. Operations Management: This involves the management of processes, systems, and
people to ensure that products and services are produced efficiently, on time, and to
the required quality standards.
2. Manufacturing Systems: This involves the design, development, and optimization of
manufacturing systems, including production lines, assembly lines, and supply chains.
3. Quality Control: This involves the implementation of quality control programs to ensure
that products and services meet the required quality standards.
4. Ergonomics: This involves the design of work environments, equipment, and tools to
maximize productivity and minimize the risk of injury or discomfort.
5. Logistics and Supply Chain Management: This involves the management of the flow of
goods, services, and information from suppliers to customers, including transportation,
warehousing, and inventory management.
Industrial engineers work in a wide range of industries, including manufacturing, healthcare,
transportation, and service industries. They may work in a variety of roles, including operations
managers, manufacturing engineers, quality control engineers, logistics and supply chain
managers, and ergonomics specialists.""",
              ),
              _buildListItem(
                context,
                'assets/field_image/information_system.jpg',
                'information system',
                """Information systems is a field that combines elements of business, computer science, and
information technology to design, develop, implement, and manage computer-based
information systems for organizations. The field of information systems is divided into several
sub-disciplines, including:
Management Information Systems (MIS): This sub-discipline focuses on the use of information
technology to support and enhance business processes and decision-making. It involves the
design, development, implementation, and management of computer-based information
systems for organizations.
Enterprise Resource Planning (ERP): This sub-discipline focuses on the design and
implementation of integrated software systems that support business operations and
management.
Business Intelligence (BI): This sub-discipline focuses on the use of data analytics and data
visualization techniques to support decision-making in organizations.
Information Security: This sub-discipline focuses on the protection of information and
information systems from unauthorized access, use, disclosure, disruption, modification, or
destruction.
Data Management: This sub-discipline focuses on the design and management of databases
and other information repositories, as well as data integration and data governance.
Information systems professionals work in a variety of roles, including business analysts,
systems analysts, project managers, data analysts, database administrators, network
administrators, and security analysts. They may work in a range of industries, including
healthcare, finance, manufacturing, retail, and government.
""",
              ),
              _buildListItem(
                context,
                'assets/field_image/information_technology.jpg',
                'information technology',
                """Information Technology (IT) is a field of study that deals with the design, development,
implementation, and maintenance of computer-based information systems. It includes the
hardware, software, and network components that make up these systems, as well as the
people who use and manage them. The field of IT encompasses a wide range of sub-disciplines,
including:
Computer Networking: This involves the design, implementation, and management of
computer networks, including local area networks (LANs), wide area networks (WANs), and the
internet.
Systems Administration: This involves the installation, configuration, and management of
computer systems and software, including servers, databases, and operating systems.
Web Development: This involves the design and development of websites and web-based
applications, including user interfaces and back-end functionality.
Database Administration: This involves the design, implementation, and management of
databases, including data modeling, database security, and backup and recovery.
Cybersecurity: This involves the protection of computer systems and networks from
unauthorized access, attack, and other security threats.
IT professionals work in a variety of roles, including system administrators, network
administrators, web developers, software developers, database administrators, cybersecurity
analysts, and project managers. They may work in a range of industries, including healthcare,
finance, manufacturing, retail, and government.
""",
              ),
              _buildListItem(
                context,
                'assets/field_image/Leather_engineering.jpg',
                'Leather engineering',
                """Leather engineering is a branch of engineering that deals with the processing of animal hides
and skins to produce leather. Leather is a durable and flexible material that is commonly used
in the production of shoes, clothing, bags, furniture, and other consumer products.
Leather engineering involves a variety of processes, including tanning, dyeing, and finishing.
Tanning is the process of treating animal hides with chemicals to preserve them and prevent
decay. Dyeing involves adding color to the leather, while finishing involves applying treatments
to the leather to improve its appearance, texture, and durability.
Leather engineers work in a variety of roles, including product development engineers, process
engineers, quality control engineers, and research scientists. They may work in the leather
industry, manufacturing companies, or research institutions. Some of the key areas of focus in
leather engineering include developing new tanning and finishing methods, improving the
quality and durability of leather, and reducing the environmental impact of leather production.""",
              ),
              _buildListItem(
                context,
                'assets/field_image/mecanical.jpg',
                'mechanical engineering',
                """Mechanical engineering is a field of engineering that deals with the design, analysis,
manufacturing, and maintenance of mechanical systems. These systems can include machines,
engines, vehicles, and other mechanical devices. Some of the areas that mechanical engineers
work in include:
Design and Manufacturing: This involves the design and manufacturing of mechanical systems
and components using computer-aided design (CAD) software, as well as the selection of
materials and manufacturing processes.
Robotics and Automation: This involves the design and development of robots and other
automated systems for manufacturing, assembly, and other tasks.
Thermodynamics and Heat Transfer: This involves the study of how energy is transferred in
mechanical systems and the design of efficient heating and cooling systems.
Fluid Mechanics: This involves the study of how fluids (liquids and gases) behave in mechanical
systems, and the design of pumps, turbines, and other fluid-based systems.
Materials Science: This involves the study of the properties and behavior of materials, and the
selection of appropriate materials for mechanical systems.
Mechanics and Dynamics: This involves the study of the behavior of mechanical systems under
different conditions, including the study of forces, motion, and stress.
Mechanical engineers work in a wide range of industries, including aerospace, automotive,
manufacturing, energy, and healthcare. They may work in a variety of roles, including design
engineers, project managers, research and development engineers, and quality control
engineers.""",
              ),
              _buildListItem(
                context,
                'assets/field_image/Mechatronics_engineering.jpg',
                'Mechatronics engineering',
                """Mechatronics engineering is a field of engineering that combines mechanical, electrical, and
computer engineering to design and develop complex systems that incorporate these different
engineering disciplines. Mechatronics engineers integrate mechanical components, sensors,
actuators, and control systems to create systems that can perform complex tasks. Some of the
areas that mechatronics engineers work in include:
1. Robotics: This involves the design and development of robotic systems, including the
mechanical structure, sensors, actuators, and control systems that enable the robot to
perform tasks autonomously.
2. Automation Systems: This involves the design and development of systems that
automate manufacturing processes, including assembly lines, material handling systems,
and inspection systems.
3. Control Systems: This involves the design and development of control systems that
regulate the behavior of mechanical systems, including feedback control, adaptive
control, and fuzzy logic control.
4. Automotive Systems: This involves the design and development of automotive systems,
including advanced driver-assistance systems (ADAS), electric vehicles, and hybrid
vehicles.
5. Consumer Products: This involves the design and development of consumer products
that incorporate mechatronics, such as smart home systems, wearable technology, and
medical devices.
Mechatronics engineers work in a wide range of industries, including automotive, aerospace,
manufacturing, consumer products, and healthcare. They may work in a variety of roles,
including robotics engineers, automation engineers, control systems engineers, automotive
engineers, and product development engineers.""",
              ),
              _buildListItem(
                context,
                'assets/field_image/software_enginering.jpg',
                'software engineering',
                """Software engineers work on the development, design, testing, and maintenance of software systems.
Here are some of the common tasks that software engineers typically perform:
Designing software systems: This involves creating the overall structure of software applications and
determining how different components will work together.
Developing software applications: This involves writing code in programming languages such as Java,
Python, C++, or JavaScript to create software that meets the specifications of the design.
Testing software applications: This involves using a variety of testing tools and techniques to ensure that
the software works correctly and is free from defects.
Maintaining software applications: This involves making changes to software applications to fix bugs or
add new features.
Collaborating with other team members: Software engineers often work as part of a team, so they need
to be able to communicate effectively with other team members and collaborate on projects.
Researching new technologies and tools: Software engineers need to stay up-to-date with the latest
technologies and tools in order to develop software that is efficient and reliable.
Managing software projects: Some software engineers are responsible for managing software
development projects, which involves planning, scheduling, and tracking the progress of the project.
""",
              ),
              _buildListItem(
                context,
                'assets/field_image/Textile_engineering.jpg',
                'Textile engineering',
                """Textile engineering is a branch of engineering that focuses on the design and development of
fibers, yarns, fabrics, and textiles. Textile engineers apply principles of chemistry, physics, and
engineering to develop new materials and processes for the textile industry.
Some of the areas where textile engineering is applied include:
1. Fiber Science: Textile engineers study the properties and characteristics of fibers, such
as cotton, wool, and synthetic materials, to develop new fibers with improved
properties.
2. Yarn Production: Textile engineers design and develop processes for spinning fibers into
yarns, which are then used to create fabrics.
3. Fabric Manufacturing: Textile engineers design and develop processes for weaving,
knitting, and other methods of fabric manufacturing.
4. Textile Chemistry: Textile engineers study the chemistry of textile materials, including
dyes, finishes, and coatings, to develop new materials with improved properties.
5. Technical Textiles: Textile engineers develop materials for specialized applications, such
as medical textiles, protective textiles, and geotextiles.
Textile engineers work in a variety of roles, including product development engineers, process
engineers, quality control engineers, and research scientists. They may work in the textile
industry, manufacturing companies, or research institutions.
""",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(
      BuildContext context, String imageUrl, String title, String paragraph) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
                imageUrl: imageUrl, paragraph: paragraph, title: title),
          ),
        );
      },
      child: Hero(
        tag: imageUrl,
        child: Container(
          margin: const EdgeInsets.only(bottom: 16.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              border:
                  Border.all(color: const Color.fromARGB(255, 129, 100, 249))),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imageUrl,
                  width: 60.0,
                  height: 60.0,
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String imageUrl;
  final String paragraph;
  final String title;

  const DetailPage(
      {Key? key,
      required this.imageUrl,
      required this.paragraph,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 114, 90, 208),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: imageUrl,
              child: Image.asset(
                imageUrl,
                width: MediaQuery.of(context).size.width,
                height: 300.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                paragraph,
                style: const TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
