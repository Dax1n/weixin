package club.gude.entity.user;

import club.gude.entity.BaseRes;

/**
 * @Author Gude
 * @Date 2016/4/24.
 */
public class Group extends BaseRes {
    private int id;
    private String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Group{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}' + ";" + super.toString();
    }
}
