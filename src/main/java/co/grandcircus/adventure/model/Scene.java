package co.grandcircus.adventure.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;

@Document("scene")
public class Scene {

    @Id
    public String storyId;

    /**
     * Previous scene, if this is the starting scene make this null
     */
    private Scene parent;

    private List<Scene> options;

    // "option"
    private String title;

    private String description;

    public Scene(Scene parent, String title, String description) {
        this.parent = parent;
        this.title = title;
        this.description = description;
    }

    public void addOption(Scene scene) {
        this.options.add(scene);
    }

    public void addOption(String title, String description) {
        options.add(new Scene(this, title, description));
    }

    public Scene getParent() {
        return parent;
    }

    public String getTitle() {
        return this.title;
    }

    public String getDescription() {
        return this.description;
    }
}
