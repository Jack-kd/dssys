.class Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/swing/Icon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/seamless/swing/ClosableTabbedPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloseTabIcon"
.end annotation


# instance fields
.field private fileIcon:Ljavax/swing/Icon;

.field private height:I

.field private mouseover:Z

.field private mousepressed:Z

.field final synthetic this$0:Lorg/seamless/swing/ClosableTabbedPane;

.field private width:I

.field private x_pos:I

.field private y_pos:I


# direct methods
.method public constructor <init>(Lorg/seamless/swing/ClosableTabbedPane;Ljavax/swing/Icon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/seamless/swing/ClosableTabbedPane;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->mouseover:Z

    .line 8
    .line 9
    iput-boolean p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->mousepressed:Z

    .line 10
    .line 11
    iput-object p2, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->fileIcon:Ljavax/swing/Icon;

    .line 12
    .line 13
    const/16 p1, 0x10

    .line 14
    .line 15
    iput p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->width:I

    .line 16
    .line 17
    iput p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->height:I

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic access$002(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->mouseover:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$102(Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->mousepressed:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public getBounds()Ljava/awt/Rectangle;
    .locals 5

    .line 1
    new-instance v0, Ljava/awt/Rectangle;

    .line 2
    .line 3
    iget v1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->x_pos:I

    .line 4
    .line 5
    iget v2, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->y_pos:I

    .line 6
    .line 7
    iget v3, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->width:I

    .line 8
    .line 9
    iget v4, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->height:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public getIconHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getIconWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->width:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->fileIcon:Ljavax/swing/Icon;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Ljavax/swing/Icon;->getIconWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    add-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    move-object v1, p1

    .line 3
    check-cast v1, Ljavax/swing/JTabbedPane;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljavax/swing/JTabbedPane;->getUI()Ljavax/swing/plaf/TabbedPaneUI;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, v1, p3, p4}, Ljavax/swing/plaf/TabbedPaneUI;->tabForCoordinate(Ljavax/swing/JTabbedPane;II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1, v2}, Ljavax/swing/JTabbedPane;->getComponentAt(I)Ljava/awt/Component;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljavax/swing/JComponent;

    .line 18
    .line 19
    const-string v2, "isClosable"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljavax/swing/JComponent;->getClientProperty(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    :cond_0
    if-eqz v0, :cond_6

    .line 34
    .line 35
    iput p3, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->x_pos:I

    .line 36
    .line 37
    iput p4, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->y_pos:I

    .line 38
    .line 39
    add-int/lit8 v0, p4, 0x1

    .line 40
    .line 41
    iget-object v1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/seamless/swing/ClosableTabbedPane;

    .line 42
    .line 43
    invoke-static {v1}, Lorg/seamless/swing/ClosableTabbedPane;->access$200(Lorg/seamless/swing/ClosableTabbedPane;)Ljavax/swing/Icon;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-boolean v1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->mouseover:Z

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    iget-object p4, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/seamless/swing/ClosableTabbedPane;

    .line 54
    .line 55
    invoke-static {p4}, Lorg/seamless/swing/ClosableTabbedPane;->access$200(Lorg/seamless/swing/ClosableTabbedPane;)Ljavax/swing/Icon;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    invoke-interface {p4, p1, p2, p3, v0}, Ljavax/swing/Icon;->paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_1
    iget-object v1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/seamless/swing/ClosableTabbedPane;

    .line 65
    .line 66
    invoke-static {v1}, Lorg/seamless/swing/ClosableTabbedPane;->access$300(Lorg/seamless/swing/ClosableTabbedPane;)Ljavax/swing/Icon;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-boolean v1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->mouseover:Z

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    iget-boolean v1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->mousepressed:Z

    .line 77
    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    iget-object p4, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/seamless/swing/ClosableTabbedPane;

    .line 81
    .line 82
    invoke-static {p4}, Lorg/seamless/swing/ClosableTabbedPane;->access$300(Lorg/seamless/swing/ClosableTabbedPane;)Ljavax/swing/Icon;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    invoke-interface {p4, p1, p2, p3, v0}, Ljavax/swing/Icon;->paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_0

    .line 90
    .line 91
    :cond_2
    iget-object v1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/seamless/swing/ClosableTabbedPane;

    .line 92
    .line 93
    invoke-static {v1}, Lorg/seamless/swing/ClosableTabbedPane;->access$400(Lorg/seamless/swing/ClosableTabbedPane;)Ljavax/swing/Icon;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    iget-boolean v1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->mousepressed:Z

    .line 100
    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    iget-object p4, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->this$0:Lorg/seamless/swing/ClosableTabbedPane;

    .line 104
    .line 105
    invoke-static {p4}, Lorg/seamless/swing/ClosableTabbedPane;->access$400(Lorg/seamless/swing/ClosableTabbedPane;)Ljavax/swing/Icon;

    .line 106
    .line 107
    .line 108
    move-result-object p4

    .line 109
    invoke-interface {p4, p1, p2, p3, v0}, Ljavax/swing/Icon;->paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    add-int/lit8 v0, p4, 0x2

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/awt/Graphics;->getColor()Ljava/awt/Color;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget-boolean v2, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->mousepressed:Z

    .line 120
    .line 121
    if-eqz v2, :cond_4

    .line 122
    .line 123
    iget-boolean v2, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->mouseover:Z

    .line 124
    .line 125
    if-eqz v2, :cond_4

    .line 126
    .line 127
    sget-object v2, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    .line 128
    .line 129
    invoke-virtual {p2, v2}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 130
    .line 131
    .line 132
    add-int/lit8 v2, p3, 0x1

    .line 133
    .line 134
    const/16 v3, 0xc

    .line 135
    .line 136
    const/16 v4, 0xd

    .line 137
    .line 138
    invoke-virtual {p2, v2, v0, v3, v4}, Ljava/awt/Graphics;->fillRect(IIII)V

    .line 139
    .line 140
    .line 141
    :cond_4
    sget-object v2, Ljava/awt/Color;->black:Ljava/awt/Color;

    .line 142
    .line 143
    invoke-virtual {p2, v2}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 144
    .line 145
    .line 146
    add-int/lit8 v2, p3, 0x1

    .line 147
    .line 148
    add-int/lit8 v3, p3, 0xc

    .line 149
    .line 150
    invoke-virtual {p2, v2, v0, v3, v0}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 151
    .line 152
    .line 153
    add-int/lit8 v4, p4, 0xf

    .line 154
    .line 155
    invoke-virtual {p2, v2, v4, v3, v4}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 156
    .line 157
    .line 158
    add-int/lit8 v2, p4, 0x3

    .line 159
    .line 160
    add-int/lit8 v3, p4, 0xe

    .line 161
    .line 162
    invoke-virtual {p2, p3, v2, p3, v3}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 163
    .line 164
    .line 165
    add-int/lit8 v4, p3, 0xd

    .line 166
    .line 167
    invoke-virtual {p2, v4, v2, v4, v3}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 168
    .line 169
    .line 170
    add-int/lit8 v2, p3, 0x3

    .line 171
    .line 172
    add-int/lit8 v3, p4, 0x5

    .line 173
    .line 174
    add-int/lit8 v4, p3, 0xa

    .line 175
    .line 176
    add-int/lit8 v5, p4, 0xc

    .line 177
    .line 178
    invoke-virtual {p2, v2, v3, v4, v5}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 179
    .line 180
    .line 181
    iget-boolean v6, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->mouseover:Z

    .line 182
    .line 183
    if-eqz v6, :cond_5

    .line 184
    .line 185
    sget-object v6, Ljava/awt/Color;->GRAY:Ljava/awt/Color;

    .line 186
    .line 187
    invoke-virtual {p2, v6}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    add-int/lit8 v6, p4, 0x6

    .line 191
    .line 192
    add-int/lit8 v7, p3, 0x9

    .line 193
    .line 194
    invoke-virtual {p2, v2, v6, v7, v5}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 195
    .line 196
    .line 197
    add-int/lit8 v8, p3, 0x4

    .line 198
    .line 199
    add-int/lit8 p4, p4, 0xb

    .line 200
    .line 201
    invoke-virtual {p2, v8, v3, v4, p4}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v4, v3, v2, v5}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, v4, v6, v8, v5}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p2, v7, v3, v2, p4}, Ljava/awt/Graphics;->drawLine(IIII)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2, v1}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 214
    .line 215
    .line 216
    iget-object p4, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->fileIcon:Ljavax/swing/Icon;

    .line 217
    .line 218
    if-eqz p4, :cond_6

    .line 219
    .line 220
    iget v1, p0, Lorg/seamless/swing/ClosableTabbedPane$CloseTabIcon;->width:I

    .line 221
    .line 222
    add-int/2addr p3, v1

    .line 223
    invoke-interface {p4, p1, p2, p3, v0}, Ljavax/swing/Icon;->paintIcon(Ljava/awt/Component;Ljava/awt/Graphics;II)V

    .line 224
    .line 225
    .line 226
    :cond_6
    :goto_0
    return-void
.end method
