.class public abstract Lorg/seamless/swing/logging/LogTableCellRenderer;
.super Ljavax/swing/table/DefaultTableCellRenderer;
.source "SourceFile"


# instance fields
.field protected dateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljavax/swing/table/DefaultTableCellRenderer;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    const-string v1, "HH:mm:ss:SSS"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/seamless/swing/logging/LogTableCellRenderer;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public abstract getDebugIcon()Ljavax/swing/ImageIcon;
.end method

.method public abstract getInfoIcon()Ljavax/swing/ImageIcon;
.end method

.method public getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;
    .locals 9

    .line 1
    check-cast p2, Lorg/seamless/swing/logging/LogMessage;

    .line 2
    .line 3
    if-eqz p6, :cond_3

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p6, v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p6, v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-eq p6, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, "\n"

    .line 19
    .line 20
    const-string v1, "<NL>"

    .line 21
    .line 22
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v0, "\r"

    .line 27
    .line 28
    const-string v1, "<CR>"

    .line 29
    .line 30
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    move-object v2, p0

    .line 35
    move-object v3, p1

    .line 36
    move v5, p3

    .line 37
    move v6, p4

    .line 38
    move v7, p5

    .line 39
    move v8, p6

    .line 40
    invoke-super/range {v2 .. v8}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_0
    move-object v1, p1

    .line 46
    move v3, p3

    .line 47
    move v4, p4

    .line 48
    move v5, p5

    .line 49
    move v6, p6

    .line 50
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getSource()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    move-object v0, p0

    .line 55
    invoke-super/range {v0 .. v6}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1

    .line 60
    :cond_1
    move-object v1, p1

    .line 61
    move v3, p3

    .line 62
    move v4, p4

    .line 63
    move v5, p5

    .line 64
    move v6, p6

    .line 65
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getThread()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    move-object v0, p0

    .line 70
    invoke-super/range {v0 .. v6}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_2
    move-object v0, p0

    .line 76
    move-object v1, p1

    .line 77
    move v3, p3

    .line 78
    move v4, p4

    .line 79
    move v5, p5

    .line 80
    move v6, p6

    .line 81
    new-instance p1, Ljava/util/Date;

    .line 82
    .line 83
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getCreatedOn()Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide p2

    .line 91
    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 92
    .line 93
    .line 94
    iget-object p2, v0, Lorg/seamless/swing/logging/LogTableCellRenderer;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-super/range {v0 .. v6}, Ljavax/swing/table/DefaultTableCellRenderer;->getTableCellRendererComponent(Ljavax/swing/JTable;Ljava/lang/Object;ZZII)Ljava/awt/Component;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_3
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 110
    .line 111
    invoke-virtual {p1, p3}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_8

    .line 116
    .line 117
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 122
    .line 123
    invoke-virtual {p1, p3}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eqz p1, :cond_4

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 135
    .line 136
    invoke-virtual {p1, p3}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_5

    .line 141
    .line 142
    new-instance p1, Ljavax/swing/JLabel;

    .line 143
    .line 144
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogTableCellRenderer;->getDebugIcon()Ljavax/swing/ImageIcon;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-direct {p1, p2}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    .line 149
    .line 150
    .line 151
    return-object p1

    .line 152
    :cond_5
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    sget-object p3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 157
    .line 158
    invoke-virtual {p1, p3}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_7

    .line 163
    .line 164
    invoke-virtual {p2}, Lorg/seamless/swing/logging/LogMessage;->getLevel()Ljava/util/logging/Level;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    sget-object p2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Ljava/util/logging/Level;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_6

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_6
    new-instance p1, Ljavax/swing/JLabel;

    .line 178
    .line 179
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogTableCellRenderer;->getInfoIcon()Ljavax/swing/ImageIcon;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-direct {p1, p2}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    .line 184
    .line 185
    .line 186
    return-object p1

    .line 187
    :cond_7
    :goto_0
    new-instance p1, Ljavax/swing/JLabel;

    .line 188
    .line 189
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogTableCellRenderer;->getTraceIcon()Ljavax/swing/ImageIcon;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-direct {p1, p2}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    .line 194
    .line 195
    .line 196
    return-object p1

    .line 197
    :cond_8
    :goto_1
    new-instance p1, Ljavax/swing/JLabel;

    .line 198
    .line 199
    invoke-virtual {p0}, Lorg/seamless/swing/logging/LogTableCellRenderer;->getWarnErrorIcon()Ljavax/swing/ImageIcon;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-direct {p1, p2}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    .line 204
    .line 205
    .line 206
    return-object p1
.end method

.method public abstract getTraceIcon()Ljavax/swing/ImageIcon;
.end method

.method public abstract getWarnErrorIcon()Ljavax/swing/ImageIcon;
.end method
