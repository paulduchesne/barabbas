
CREATE DATABASE IF NOT EXISTS barabbas;
USE barabbas;

CREATE TABLE agent (
    agent_id INT PRIMARY KEY,
);

CREATE TABLE `event` (
    event_id INT PRIMARY KEY,
);

CREATE TABLE event_agent (
    event_id INT,
    agent_id INT,
    PRIMARY KEY (event_id, agent_id),
    FOREIGN KEY (event_id) REFERENCES `event`(event_id),
    FOREIGN KEY (agent_id) REFERENCES agent(agent_id)
);

CREATE TABLE item (
    item_id INT PRIMARY KEY,
);

CREATE TABLE item_agent (
    item_id INT,
    agent_id INT,
    PRIMARY KEY (item_id, agent_id),
    FOREIGN KEY (item_id) REFERENCES item(item_id),
    FOREIGN KEY (agent_id) REFERENCES agent(agent_id)
);

CREATE TABLE item_event (
    item_id INT,
    event_id INT,
    PRIMARY KEY (item_id, event_id),
    FOREIGN KEY (item_id) REFERENCES item(item_id),
    FOREIGN KEY (event_id) REFERENCES `event`(event_id)
);

CREATE TABLE manifestation (
    manifestation_id INT PRIMARY KEY,
);

CREATE TABLE manifestation_agent (
    manifestation_id INT,
    agent_id INT,
    PRIMARY KEY (manifestation_id, agent_id),
    FOREIGN KEY (manifestation_id) REFERENCES manifestation(manifestation_id),
    FOREIGN KEY (agent_id) REFERENCES agent(agent_id)
);

CREATE TABLE manifestation_event (
    manifestation_id INT,
    event_id INT,
    PRIMARY KEY (manifestation_id, event_id),
    FOREIGN KEY (manifestation_id) REFERENCES manifestation(manifestation_id),
    FOREIGN KEY (event_id) REFERENCES `event`(event_id)
);

CREATE TABLE variant (
    variant_id INT PRIMARY KEY,
);

CREATE TABLE variant_agent (
    variant_id INT,
    agent_id INT,
    PRIMARY KEY (variant_id, agent_id),
    FOREIGN KEY (variant_id) REFERENCES variant(variant_id),
    FOREIGN KEY (agent_id) REFERENCES agent(agent_id)
);

CREATE TABLE variant_event (
    variant_id INT,
    event_id INT,
    PRIMARY KEY (variant_id, event_id),
    FOREIGN KEY (variant_id) REFERENCES variant(variant_id),
    FOREIGN KEY (event_id) REFERENCES `event`(event_id)
);

CREATE TABLE variant_manifestation (
    variant_id INT,
    manifestation_id INT,
    PRIMARY KEY (variant_id, manifestation_id),
    FOREIGN KEY (variant_id) REFERENCES variant(variant_id),
    FOREIGN KEY (manifestation_id) REFERENCES manifestation(manifestation_id)
);

CREATE TABLE work (
    work_id INT PRIMARY KEY,
);

CREATE TABLE work_agent (
    work_id INT,
    agent_id INT,
    PRIMARY KEY (work_id, agent_id),
    FOREIGN KEY (work_id) REFERENCES work(work_id),
    FOREIGN KEY (agent_id) REFERENCES agent(agent_id)
);

CREATE TABLE work_event (
    work_id INT,
    event_id INT,
    PRIMARY KEY (work_id, event_id),
    FOREIGN KEY (work_id) REFERENCES work(work_id),
    FOREIGN KEY (event_id) REFERENCES `event`(event_id)
);

CREATE TABLE work_manifestation (
    work_id INT,
    manifestation_id INT,
    PRIMARY KEY (work_id, manifestation_id),
    FOREIGN KEY (work_id) REFERENCES work(work_id),
    FOREIGN KEY (manifestation_id) REFERENCES manifestation(manifestation_id)
);

CREATE TABLE work_variant (
    work_id INT,
    variant_id INT,
    PRIMARY KEY (work_id, variant_id),
    FOREIGN KEY (work_id) REFERENCES work(work_id),
    FOREIGN KEY (variant_id) REFERENCES variant(variant_id)
);
