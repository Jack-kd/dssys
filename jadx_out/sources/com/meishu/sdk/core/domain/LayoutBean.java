package com.meishu.sdk.core.domain;

import com.anythink.core.common.f.g;
import com.baidu.mobads.sdk.internal.a;
import com.beizi.fusion.widget.ScrollClickView;
import com.sigmob.sdk.base.n;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class LayoutBean implements Serializable {
    private int dpi;
    private int mtime;
    private List<StyleBean> style;

    public static class StyleBean implements Serializable {
        private ButtonBean button;
        private ContainerBean container;
        private ContentBean content;
        private CreativeBean creative;
        private CreativeBean5 creatives;
        private DislikeBean dislike;
        private IconBean icon;
        private int id;
        private LogoBean logo;
        private SourceBean source;
        private TitleBean title;
        private int type;

        public static class BackgroundBean implements Serializable {
            private String color;

            public static BackgroundBean fromJson(JSONObject jSONObject) {
                BackgroundBean backgroundBean = new BackgroundBean();
                if (jSONObject != null) {
                    backgroundBean.setColor(jSONObject.optString("color"));
                }
                return backgroundBean;
            }

            public String getColor() {
                return this.color;
            }

            public void setColor(String str) {
                this.color = str;
            }
        }

        public static class BorderBean implements Serializable {
            private boolean clip;
            private String color;
            private List<Integer> radius;
            private int size;

            public static BorderBean fromJson(JSONObject jSONObject) {
                BorderBean borderBean = new BorderBean();
                if (jSONObject != null) {
                    borderBean.setClip(jSONObject.optBoolean("clip"));
                    borderBean.setRadius(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("radius")));
                    borderBean.setSize(jSONObject.optInt("size"));
                    borderBean.setColor(jSONObject.optString("color"));
                }
                return borderBean;
            }

            public boolean getClip() {
                return this.clip;
            }

            public String getColor() {
                return this.color;
            }

            public List<Integer> getRadius() {
                return this.radius;
            }

            public int getSize() {
                return this.size;
            }

            public void setClip(boolean z2) {
                this.clip = z2;
            }

            public void setColor(String str) {
                this.color = str;
            }

            public void setRadius(List<Integer> list) {
                this.radius = list;
            }

            public void setSize(int i2) {
                this.size = i2;
            }
        }

        public static class ButtonBean implements Serializable {
            private BackgroundBean background;
            private BorderBean border;
            private List<Integer> margin;
            private List<Integer> padding;
            private TextBean text;

            public static ButtonBean fromJson(JSONObject jSONObject) {
                ButtonBean buttonBean = new ButtonBean();
                if (jSONObject != null) {
                    buttonBean.setBorder(BorderBean.fromJson(jSONObject.optJSONObject("border")));
                    buttonBean.setBackground(BackgroundBean.fromJson(jSONObject.optJSONObject("background")));
                    buttonBean.setText(TextBean.fromJson(jSONObject.optJSONObject(a.f10878b)));
                    buttonBean.setMargin(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("margin")));
                    buttonBean.setPadding(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("padding")));
                }
                return buttonBean;
            }

            public BackgroundBean getBackground() {
                return this.background;
            }

            public BorderBean getBorder() {
                return this.border;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public List<Integer> getPadding() {
                return this.padding;
            }

            public TextBean getText() {
                return this.text;
            }

            public void setBackground(BackgroundBean backgroundBean) {
                this.background = backgroundBean;
            }

            public void setBorder(BorderBean borderBean) {
                this.border = borderBean;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }

            public void setPadding(List<Integer> list) {
                this.padding = list;
            }

            public void setText(TextBean textBean) {
                this.text = textBean;
            }
        }

        public static class ContainerBean implements Serializable {
            private BorderBean border;
            private List<Integer> padding;

            public static ContainerBean fromJson(JSONObject jSONObject) {
                ContainerBean containerBean = new ContainerBean();
                if (jSONObject != null) {
                    containerBean.setBorder(BorderBean.fromJson(jSONObject.optJSONObject("border")));
                    containerBean.setPadding(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("padding")));
                }
                return containerBean;
            }

            public BorderBean getBorder() {
                return this.border;
            }

            public List<Integer> getPadding() {
                return this.padding;
            }

            public void setBorder(BorderBean borderBean) {
                this.border = borderBean;
            }

            public void setPadding(List<Integer> list) {
                this.padding = list;
            }
        }

        public static class ContentBean implements Serializable {
            private List<Integer> margin;
            private List<Integer> padding;
            private TextBean text;

            public static ContentBean fromJson(JSONObject jSONObject) {
                ContentBean contentBean = new ContentBean();
                if (jSONObject != null) {
                    contentBean.setMargin(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("margin")));
                    contentBean.setPadding(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("padding")));
                    contentBean.setText(TextBean.fromJson(jSONObject.optJSONObject(a.f10878b)));
                }
                return contentBean;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public List<Integer> getPadding() {
                return this.padding;
            }

            public TextBean getText() {
                return this.text;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }

            public void setPadding(List<Integer> list) {
                this.padding = list;
            }

            public void setText(TextBean textBean) {
                this.text = textBean;
            }
        }

        public static class CreativeBean implements Serializable {
            private BorderBean border;
            private List<Integer> margin;

            public static CreativeBean fromJson(JSONObject jSONObject) {
                CreativeBean creativeBean = new CreativeBean();
                if (jSONObject != null) {
                    creativeBean.setBorder(BorderBean.fromJson(jSONObject.optJSONObject("border")));
                    creativeBean.setMargin(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("margin")));
                }
                return creativeBean;
            }

            public BorderBean getBorder() {
                return this.border;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public void setBorder(BorderBean borderBean) {
                this.border = borderBean;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }
        }

        public static class CreativeBean5 implements Serializable {
            private ChildsBean childs;
            private List<Integer> margin;

            public static class ChildsBean implements Serializable {
                private ChildBean center;
                private ChildBean left;
                private ChildBean right;

                public static class ChildBean implements Serializable {
                    private BorderBean border;
                    private List<Integer> margin;

                    public static ChildBean fromJson(JSONObject jSONObject) {
                        ChildBean childBean = new ChildBean();
                        if (jSONObject != null) {
                            childBean.setBorder(BorderBean.fromJson(jSONObject.optJSONObject("border")));
                            childBean.setMargin(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("margin")));
                        }
                        return childBean;
                    }

                    public BorderBean getBorder() {
                        return this.border;
                    }

                    public List<Integer> getMargin() {
                        return this.margin;
                    }

                    public void setBorder(BorderBean borderBean) {
                        this.border = borderBean;
                    }

                    public void setMargin(List<Integer> list) {
                        this.margin = list;
                    }
                }

                public static ChildsBean fromJson(JSONObject jSONObject) {
                    ChildsBean childsBean = new ChildsBean();
                    if (jSONObject != null) {
                        childsBean.setLeft(ChildBean.fromJson(jSONObject.optJSONObject(ScrollClickView.DIR_LEFT)));
                        childsBean.setCenter(ChildBean.fromJson(jSONObject.optJSONObject("center")));
                        childsBean.setRight(ChildBean.fromJson(jSONObject.optJSONObject(ScrollClickView.DIR_RIGHT)));
                    }
                    return childsBean;
                }

                public ChildBean getCenter() {
                    return this.center;
                }

                public ChildBean getLeft() {
                    return this.left;
                }

                public ChildBean getRight() {
                    return this.right;
                }

                public void setCenter(ChildBean childBean) {
                    this.center = childBean;
                }

                public void setLeft(ChildBean childBean) {
                    this.left = childBean;
                }

                public void setRight(ChildBean childBean) {
                    this.right = childBean;
                }
            }

            public static CreativeBean5 fromJson(JSONObject jSONObject) {
                CreativeBean5 creativeBean5 = new CreativeBean5();
                if (jSONObject != null) {
                    creativeBean5.setChilds(ChildsBean.fromJson(jSONObject.optJSONObject("childs")));
                    creativeBean5.setMargin(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("margin")));
                }
                return creativeBean5;
            }

            public ChildsBean getChilds() {
                return this.childs;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public void setChilds(ChildsBean childsBean) {
                this.childs = childsBean;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }
        }

        public static class DislikeBean implements Serializable {
            private BackgroundBean background;
            private BorderBean border;
            private boolean hide;
            private List<Integer> margin;
            private List<Integer> padding;
            private TextBean text;

            public static DislikeBean fromJson(JSONObject jSONObject) {
                DislikeBean dislikeBean = new DislikeBean();
                if (jSONObject != null) {
                    dislikeBean.setHide(jSONObject.optBoolean("hide"));
                    dislikeBean.setBorder(BorderBean.fromJson(jSONObject.optJSONObject("border")));
                    dislikeBean.setBackground(BackgroundBean.fromJson(jSONObject.optJSONObject("background")));
                    dislikeBean.setText(TextBean.fromJson(jSONObject.optJSONObject(a.f10878b)));
                    dislikeBean.setMargin(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("margin")));
                    dislikeBean.setPadding(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("padding")));
                }
                return dislikeBean;
            }

            public BackgroundBean getBackground() {
                return this.background;
            }

            public BorderBean getBorder() {
                return this.border;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public List<Integer> getPadding() {
                return this.padding;
            }

            public TextBean getText() {
                return this.text;
            }

            public boolean isHide() {
                return this.hide;
            }

            public void setBackground(BackgroundBean backgroundBean) {
                this.background = backgroundBean;
            }

            public void setBorder(BorderBean borderBean) {
                this.border = borderBean;
            }

            public void setHide(boolean z2) {
                this.hide = z2;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }

            public void setPadding(List<Integer> list) {
                this.padding = list;
            }

            public void setText(TextBean textBean) {
                this.text = textBean;
            }
        }

        public static class IconBean implements Serializable {
            private BorderBean border;
            private List<Integer> margin;
            private int width;

            public static IconBean fromJson(JSONObject jSONObject) {
                IconBean iconBean = new IconBean();
                if (jSONObject != null) {
                    iconBean.setWidth(jSONObject.optInt("width"));
                    iconBean.setBorder(BorderBean.fromJson(jSONObject.optJSONObject("border")));
                    iconBean.setMargin(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("margin")));
                }
                return iconBean;
            }

            public BorderBean getBorder() {
                return this.border;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public int getWidth() {
                return this.width;
            }

            public void setBorder(BorderBean borderBean) {
                this.border = borderBean;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }

            public void setWidth(int i2) {
                this.width = i2;
            }
        }

        public static class LogoBean implements Serializable {
            private boolean hide;
            private List<Integer> margin;

            public static LogoBean fromJson(JSONObject jSONObject) {
                LogoBean logoBean = new LogoBean();
                if (jSONObject != null) {
                    logoBean.setHide(jSONObject.optBoolean("hide"));
                    logoBean.setMargin(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("margin")));
                }
                return logoBean;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public boolean isHide() {
                return this.hide;
            }

            public void setHide(boolean z2) {
                this.hide = z2;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }
        }

        public static class SourceBean implements Serializable {
            private boolean hide;
            private List<Integer> margin;
            private List<Integer> padding;
            private TextBean text;

            public static SourceBean fromJson(JSONObject jSONObject) {
                SourceBean sourceBean = new SourceBean();
                if (jSONObject != null) {
                    sourceBean.setHide(jSONObject.optBoolean("hide"));
                    sourceBean.setText(TextBean.fromJson(jSONObject.optJSONObject(a.f10878b)));
                    sourceBean.setMargin(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("margin")));
                    sourceBean.setPadding(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("padding")));
                }
                return sourceBean;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public List<Integer> getPadding() {
                return this.padding;
            }

            public TextBean getText() {
                return this.text;
            }

            public boolean isHide() {
                return this.hide;
            }

            public void setHide(boolean z2) {
                this.hide = z2;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }

            public void setPadding(List<Integer> list) {
                this.padding = list;
            }

            public void setText(TextBean textBean) {
                this.text = textBean;
            }
        }

        public static class TextBean implements Serializable {
            private String color;
            private String family;
            private int lines;
            private int size;

            public static TextBean fromJson(JSONObject jSONObject) {
                TextBean textBean = new TextBean();
                if (jSONObject != null) {
                    textBean.setFamily(jSONObject.optString("family"));
                    textBean.setSize(jSONObject.optInt("size"));
                    textBean.setColor(jSONObject.optString("color"));
                    textBean.setLines(jSONObject.optInt("lines"));
                }
                return textBean;
            }

            public String getColor() {
                return this.color;
            }

            public String getFamily() {
                return this.family;
            }

            public int getLines() {
                return this.lines;
            }

            public int getSize() {
                return this.size;
            }

            public void setColor(String str) {
                this.color = str;
            }

            public void setFamily(String str) {
                this.family = str;
            }

            public void setLines(int i2) {
                this.lines = i2;
            }

            public void setSize(int i2) {
                this.size = i2;
            }
        }

        public static class TitleBean implements Serializable {
            private List<Integer> margin;
            private List<Integer> padding;
            private TextBean text;

            public static TitleBean fromJson(JSONObject jSONObject) {
                TitleBean titleBean = new TitleBean();
                if (jSONObject != null) {
                    titleBean.setText(TextBean.fromJson(jSONObject.optJSONObject(a.f10878b)));
                    titleBean.setMargin(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("margin")));
                    titleBean.setPadding(LayoutBean.jsonArrayToIntegerList(jSONObject.optJSONArray("padding")));
                }
                return titleBean;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public List<Integer> getPadding() {
                return this.padding;
            }

            public TextBean getText() {
                return this.text;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }

            public void setPadding(List<Integer> list) {
                this.padding = list;
            }

            public void setText(TextBean textBean) {
                this.text = textBean;
            }
        }

        public static StyleBean fromJson(JSONObject jSONObject) {
            StyleBean styleBean = new StyleBean();
            styleBean.setId(jSONObject.optInt("id"));
            styleBean.setType(jSONObject.optInt("type"));
            styleBean.setContainer(ContainerBean.fromJson(jSONObject.optJSONObject("container")));
            styleBean.setTitle(TitleBean.fromJson(jSONObject.optJSONObject(g.a.f3271h)));
            styleBean.setCreative(CreativeBean.fromJson(jSONObject.optJSONObject("creative")));
            styleBean.setCreatives(CreativeBean5.fromJson(jSONObject.optJSONObject("creatives")));
            styleBean.setContent(ContentBean.fromJson(jSONObject.optJSONObject("content")));
            styleBean.setLogo(LogoBean.fromJson(jSONObject.optJSONObject("logo")));
            styleBean.setSource(SourceBean.fromJson(jSONObject.optJSONObject(n.f36449l)));
            styleBean.setIcon(IconBean.fromJson(jSONObject.optJSONObject("icon")));
            styleBean.setDislike(DislikeBean.fromJson(jSONObject.optJSONObject("dislike")));
            styleBean.setButton(ButtonBean.fromJson(jSONObject.optJSONObject("button")));
            return styleBean;
        }

        public ButtonBean getButton() {
            return this.button;
        }

        public ContainerBean getContainer() {
            return this.container;
        }

        public ContentBean getContent() {
            return this.content;
        }

        public CreativeBean getCreative() {
            return this.creative;
        }

        public CreativeBean5 getCreatives() {
            return this.creatives;
        }

        public DislikeBean getDislike() {
            return this.dislike;
        }

        public IconBean getIcon() {
            return this.icon;
        }

        public int getId() {
            return this.id;
        }

        public LogoBean getLogo() {
            return this.logo;
        }

        public SourceBean getSource() {
            return this.source;
        }

        public TitleBean getTitle() {
            return this.title;
        }

        public int getType() {
            return this.type;
        }

        public void setButton(ButtonBean buttonBean) {
            this.button = buttonBean;
        }

        public void setContainer(ContainerBean containerBean) {
            this.container = containerBean;
        }

        public void setContent(ContentBean contentBean) {
            this.content = contentBean;
        }

        public void setCreative(CreativeBean creativeBean) {
            this.creative = creativeBean;
        }

        public void setCreatives(CreativeBean5 creativeBean5) {
            this.creatives = creativeBean5;
        }

        public void setDislike(DislikeBean dislikeBean) {
            this.dislike = dislikeBean;
        }

        public void setIcon(IconBean iconBean) {
            this.icon = iconBean;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setLogo(LogoBean logoBean) {
            this.logo = logoBean;
        }

        public void setSource(SourceBean sourceBean) {
            this.source = sourceBean;
        }

        public void setTitle(TitleBean titleBean) {
            this.title = titleBean;
        }

        public void setType(int i2) {
            this.type = i2;
        }
    }

    public static LayoutBean fromJson(String str) throws JSONException {
        LayoutBean layoutBean = new LayoutBean();
        try {
            JSONObject jSONObject = new JSONObject(str);
            layoutBean.setMtime(jSONObject.optInt("mtime"));
            layoutBean.setDpi(jSONObject.optInt("dpi"));
            if (jSONObject.has("style")) {
                JSONArray jSONArray = jSONObject.getJSONArray("style");
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                    arrayList.add(StyleBean.fromJson(jSONArray.getJSONObject(i2)));
                }
                layoutBean.setStyle(arrayList);
            }
            return layoutBean;
        } catch (Exception e2) {
            e2.printStackTrace();
            return layoutBean;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<Integer> jsonArrayToIntegerList(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                arrayList.add(Integer.valueOf(jSONArray.optInt(i2)));
            }
        }
        return arrayList;
    }

    public int getDpi() {
        return this.dpi;
    }

    public int getMtime() {
        return this.mtime;
    }

    public List<StyleBean> getStyle() {
        return this.style;
    }

    public void setDpi(int i2) {
        this.dpi = i2;
    }

    public void setMtime(int i2) {
        this.mtime = i2;
    }

    public void setStyle(List<StyleBean> list) {
        this.style = list;
    }
}
