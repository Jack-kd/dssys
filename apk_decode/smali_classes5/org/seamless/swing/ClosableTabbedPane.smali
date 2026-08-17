.class public Lorg/seamless/swing/ClosableTabbedPane;
.super Ljavax/swing/JTabbedPane;
.source "SourceFile"

# interfaces
.implements Ljava/awt/event/MouseListener;
.implements Ljava/awt/event/MouseMotionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;,
        Lorg/seamless/swing/ClosableTabbedPane$CloseableTabbedPaneUI;,
        Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;
    }
.end annotation


# instance fields
.field private headerViewport:Ljavax/swing/JViewport;

.field private hooverCloseIcon:Ljavax/swing/Icon;

.field private listenerList:Ljavax/swing/event/EventListenerList;

.field private normalCloseIcon:Ljavax/swing/Icon;

.field private pressedCloseIcon:Ljavax/swing/Icon;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/swing/JTabbedPane;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    .line 3
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    .line 4
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->normalCloseIcon:Ljavax/swing/Icon;

    .line 5
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->hooverCloseIcon:Ljavax/swing/Icon;

    .line 6
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->pressedCloseIcon:Ljavax/swing/Icon;

    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, v0}, Lorg/seamless/swing/ClosableTabbedPane;->init(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljavax/swing/JTabbedPane;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    .line 10
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    .line 11
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->normalCloseIcon:Ljavax/swing/Icon;

    .line 12
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->hooverCloseIcon:Ljavax/swing/Icon;

    .line 13
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->pressedCloseIcon:Ljavax/swing/Icon;

    .line 14
    invoke-direct {p0, p1}, Lorg/seamless/swing/ClosableTabbedPane;->init(I)V

    return-void
.end method

.method public static synthetic access$200(Lorg/seamless/swing/ClosableTabbedPane;)Ljavax/swing/Icon;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/seamless/swing/ClosableTabbedPane;->normalCloseIcon:Ljavax/swing/Icon;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lorg/seamless/swing/ClosableTabbedPane;)Ljavax/swing/Icon;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/seamless/swing/ClosableTabbedPane;->hooverCloseIcon:Ljavax/swing/Icon;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lorg/seamless/swing/ClosableTabbedPane;)Ljavax/swing/Icon;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/seamless/swing/ClosableTabbedPane;->pressedCloseIcon:Ljavax/swing/Icon;

    .line 2
    .line 3
    return-object p0
.end method

.method private init(I)V
    .locals 1

    .line 1
    new-instance v0, Ljavax/swing/event/EventListenerList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljavax/swing/event/EventListenerList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    .line 7
    .line 8
    invoke-virtual {p0, p0}, Lorg/seamless/swing/ClosableTabbedPane;->addMouseListener(Ljava/awt/event/MouseListener;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p0}, Lorg/seamless/swing/ClosableTabbedPane;->addMouseMotionListener(Ljava/awt/event/MouseMotionListener;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lorg/seamless/swing/ClosableTabbedPane;->getUI()Ljavax/swing/plaf/TabbedPaneUI;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    instance-of v0, v0, Ljavax/swing/plaf/metal/MetalTabbedPaneUI;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lorg/seamless/swing/ClosableTabbedPane$CloseableMetalTabbedPaneUI;-><init>(Lorg/seamless/swing/ClosableTabbedPane;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lorg/seamless/swing/ClosableTabbedPane;->setUI(Ljavax/swing/plaf/TabbedPaneUI;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance v0, Lorg/seamless/swing/ClosableTabbedPane$CloseableTabbedPaneUI;

    .line 32
    .line 33
    invoke-direct {v0, p0, p1}, Lorg/seamless/swing/ClosableTabbedPane$CloseableTabbedPaneUI;-><init>(Lorg/seamless/swing/ClosableTabbedPane;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lorg/seamless/swing/ClosableTabbedPane;->setUI(Ljavax/swing/plaf/TabbedPaneUI;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private processMouseEvents(Ljava/awt/event/MouseEvent;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/seamless/swing/ClosableTabbedPane;->getUI()Ljavax/swing/plaf/TabbedPaneUI;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getX()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getY()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v1, v0, v2, v3}, Ljavax/swing/plaf/TabbedPaneUI;->tabForCoordinate(Ljavax/swing/JTabbedPane;II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-gez v1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0, v1}, Lorg/seamless/swing/ClosableTabbedPane;->getIconAt(I)Ljavax/swing/Icon;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;

    .line 28
    .line 29
    if-eqz v1, :cond_a

    .line 30
    .line 31
    invoke-virtual {v1}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->getBounds()Ljava/awt/Rectangle;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v3, v0, Lorg/seamless/swing/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    .line 36
    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    new-instance v3, Ljava/awt/Point;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/awt/Point;-><init>()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v3}, Ljavax/swing/JViewport;->getViewPosition()Ljava/awt/Point;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :goto_0
    new-instance v4, Ljava/awt/Rectangle;

    .line 50
    .line 51
    iget v5, v2, Ljava/awt/Rectangle;->x:I

    .line 52
    .line 53
    iget v6, v3, Ljava/awt/Point;->x:I

    .line 54
    .line 55
    sub-int/2addr v5, v6

    .line 56
    iget v6, v2, Ljava/awt/Rectangle;->y:I

    .line 57
    .line 58
    iget v7, v3, Ljava/awt/Point;->y:I

    .line 59
    .line 60
    sub-int/2addr v6, v7

    .line 61
    iget v7, v2, Ljava/awt/Rectangle;->width:I

    .line 62
    .line 63
    iget v8, v2, Ljava/awt/Rectangle;->height:I

    .line 64
    .line 65
    invoke-direct {v4, v5, v6, v7, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const/16 v6, 0x1f5

    .line 73
    .line 74
    const/16 v7, 0x10

    .line 75
    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v9, 0x1

    .line 78
    if-ne v5, v6, :cond_3

    .line 79
    .line 80
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getModifiers()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-ne v2, v7, :cond_2

    .line 85
    .line 86
    move v8, v9

    .line 87
    :cond_2
    invoke-static {v1, v8}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$102(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v4}, Lorg/seamless/swing/ClosableTabbedPane;->repaint(Ljava/awt/Rectangle;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    const/16 v6, 0x1f7

    .line 99
    .line 100
    const/16 v10, 0x1f4

    .line 101
    .line 102
    if-eq v5, v6, :cond_4

    .line 103
    .line 104
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    const/16 v6, 0x1fa

    .line 109
    .line 110
    if-eq v5, v6, :cond_4

    .line 111
    .line 112
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-ne v5, v10, :cond_a

    .line 117
    .line 118
    :cond_4
    iget v5, v3, Ljava/awt/Point;->x:I

    .line 119
    .line 120
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getX()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    add-int/2addr v5, v6

    .line 125
    iput v5, v3, Ljava/awt/Point;->x:I

    .line 126
    .line 127
    iget v5, v3, Ljava/awt/Point;->y:I

    .line 128
    .line 129
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getY()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    add-int/2addr v5, v6

    .line 134
    iput v5, v3, Ljava/awt/Point;->y:I

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/awt/Rectangle;->contains(Ljava/awt/Point;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_9

    .line 141
    .line 142
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    if-ne v2, v10, :cond_7

    .line 147
    .line 148
    invoke-virtual {v0}, Lorg/seamless/swing/ClosableTabbedPane;->getSelectedIndex()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-virtual {v0, v2}, Lorg/seamless/swing/ClosableTabbedPane;->fireCloseTab(I)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_6

    .line 157
    .line 158
    if-lez v2, :cond_5

    .line 159
    .line 160
    invoke-virtual {v0}, Lorg/seamless/swing/ClosableTabbedPane;->getUI()Ljavax/swing/plaf/TabbedPaneUI;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    add-int/lit8 v3, v2, -0x1

    .line 165
    .line 166
    invoke-virtual {v1, v0, v3}, Ljavax/swing/plaf/TabbedPaneUI;->getTabBounds(Ljavax/swing/JTabbedPane;I)Ljava/awt/Rectangle;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    new-instance v10, Ljava/awt/event/MouseEvent;

    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getSource()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    move-object v11, v3

    .line 177
    check-cast v11, Ljava/awt/Component;

    .line 178
    .line 179
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getID()I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    add-int/lit8 v12, v3, 0x1

    .line 184
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 186
    .line 187
    .line 188
    move-result-wide v13

    .line 189
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getModifiers()I

    .line 190
    .line 191
    .line 192
    move-result v15

    .line 193
    iget v3, v1, Ljava/awt/Rectangle;->x:I

    .line 194
    .line 195
    iget v1, v1, Ljava/awt/Rectangle;->y:I

    .line 196
    .line 197
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    .line 198
    .line 199
    .line 200
    move-result v18

    .line 201
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->isPopupTrigger()Z

    .line 202
    .line 203
    .line 204
    move-result v19

    .line 205
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getButton()I

    .line 206
    .line 207
    .line 208
    move-result v20

    .line 209
    move/from16 v17, v1

    .line 210
    .line 211
    move/from16 v16, v3

    .line 212
    .line 213
    invoke-direct/range {v10 .. v20}, Ljava/awt/event/MouseEvent;-><init>(Ljava/awt/Component;IJIIIIZI)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v10}, Lorg/seamless/swing/ClosableTabbedPane;->dispatchEvent(Ljava/awt/AWTEvent;)V

    .line 217
    .line 218
    .line 219
    :cond_5
    invoke-virtual {v0, v2}, Lorg/seamless/swing/ClosableTabbedPane;->remove(I)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_6
    invoke-static {v1, v8}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$002(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 224
    .line 225
    .line 226
    invoke-static {v1, v8}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$102(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v4}, Lorg/seamless/swing/ClosableTabbedPane;->repaint(Ljava/awt/Rectangle;)V

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_7
    invoke-static {v1, v9}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$002(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 234
    .line 235
    .line 236
    invoke-virtual/range {p1 .. p1}, Ljava/awt/event/MouseEvent;->getModifiers()I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-ne v2, v7, :cond_8

    .line 241
    .line 242
    move v8, v9

    .line 243
    :cond_8
    invoke-static {v1, v8}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$102(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_9
    invoke-static {v1, v8}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$002(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 248
    .line 249
    .line 250
    :goto_1
    invoke-virtual {v0, v4}, Lorg/seamless/swing/ClosableTabbedPane;->repaint(Ljava/awt/Rectangle;)V

    .line 251
    .line 252
    .line 253
    :cond_a
    :goto_2
    return-void
.end method


# virtual methods
.method public addCloseableTabbedPaneListener(Lorg/seamless/swing/ClosableTabbedPaneListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    .line 2
    .line 3
    const-class v1, Lorg/seamless/swing/ClosableTabbedPaneListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ljavax/swing/event/EventListenerList;->add(Ljava/lang/Class;Ljava/util/EventListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public addTab(Ljava/lang/String;Ljava/awt/Component;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/seamless/swing/ClosableTabbedPane;->addTab(Ljava/lang/String;Ljava/awt/Component;Ljavax/swing/Icon;)V

    return-void
.end method

.method public addTab(Ljava/lang/String;Ljava/awt/Component;Ljavax/swing/Icon;)V
    .locals 3

    const/4 v0, 0x1

    .line 2
    :try_start_0
    move-object v1, p2

    check-cast v1, Ljavax/swing/JComponent;

    const-string v2, "isClosable"

    .line 3
    invoke-virtual {v1, v2}, Ljavax/swing/JComponent;->getClientProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;

    invoke-direct {v0, p0, p3}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;-><init>(Lorg/seamless/swing/ClosableTabbedPane;Ljavax/swing/Icon;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1, v0, p2}, Ljavax/swing/JTabbedPane;->addTab(Ljava/lang/String;Ljavax/swing/Icon;Ljava/awt/Component;)V

    .line 6
    iget-object p1, p0, Lorg/seamless/swing/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    if-nez p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lorg/seamless/swing/ClosableTabbedPane;->getComponents()[Ljava/awt/Component;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_3

    aget-object v0, p1, p3

    .line 8
    const-string v1, "TabbedPane.scrollableViewport"

    invoke-virtual {v0}, Ljava/awt/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Ljavax/swing/JViewport;

    iput-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->headerViewport:Ljavax/swing/JViewport;

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public fireCloseTab(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljavax/swing/event/EventListenerList;->getListenerList()[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v3, v1, :cond_1

    .line 11
    .line 12
    aget-object v4, v0, v3

    .line 13
    .line 14
    instance-of v5, v4, Lorg/seamless/swing/ClosableTabbedPaneListener;

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    check-cast v4, Lorg/seamless/swing/ClosableTabbedPaneListener;

    .line 19
    .line 20
    invoke-interface {v4, p1}, Lorg/seamless/swing/ClosableTabbedPaneListener;->closeTab(I)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    return v2

    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method public getCloseableTabbedPaneListener()[Lorg/seamless/swing/ClosableTabbedPaneListener;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    .line 2
    .line 3
    const-class v1, Lorg/seamless/swing/ClosableTabbedPaneListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljavax/swing/event/EventListenerList;->getListeners(Ljava/lang/Class;)[Ljava/util/EventListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, [Lorg/seamless/swing/ClosableTabbedPaneListener;

    .line 10
    .line 11
    return-object v0
.end method

.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/seamless/swing/ClosableTabbedPane;->processMouseEvents(Ljava/awt/event/MouseEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public mouseDragged(Ljava/awt/event/MouseEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/seamless/swing/ClosableTabbedPane;->processMouseEvents(Ljava/awt/event/MouseEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public mouseEntered(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public mouseExited(Ljava/awt/event/MouseEvent;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    move v0, p1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/seamless/swing/ClosableTabbedPane;->getTabCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lorg/seamless/swing/ClosableTabbedPane;->getIconAt(I)Ljavax/swing/Icon;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {v1, p1}, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->access$002(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lorg/seamless/swing/ClosableTabbedPane;->repaint()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public mouseMoved(Ljava/awt/event/MouseEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/seamless/swing/ClosableTabbedPane;->processMouseEvents(Ljava/awt/event/MouseEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public mousePressed(Ljava/awt/event/MouseEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/seamless/swing/ClosableTabbedPane;->processMouseEvents(Ljava/awt/event/MouseEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public mouseReleased(Ljava/awt/event/MouseEvent;)V
    .locals 0

    return-void
.end method

.method public removeCloseableTabbedPaneListener(Lorg/seamless/swing/ClosableTabbedPaneListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/seamless/swing/ClosableTabbedPane;->listenerList:Ljavax/swing/event/EventListenerList;

    .line 2
    .line 3
    const-class v1, Lorg/seamless/swing/ClosableTabbedPaneListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ljavax/swing/event/EventListenerList;->remove(Ljava/lang/Class;Ljava/util/EventListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setCloseIcons(Ljavax/swing/Icon;Ljavax/swing/Icon;Ljavax/swing/Icon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/seamless/swing/ClosableTabbedPane;->normalCloseIcon:Ljavax/swing/Icon;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/seamless/swing/ClosableTabbedPane;->hooverCloseIcon:Ljavax/swing/Icon;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/seamless/swing/ClosableTabbedPane;->pressedCloseIcon:Ljavax/swing/Icon;

    .line 6
    .line 7
    return-void
.end method
