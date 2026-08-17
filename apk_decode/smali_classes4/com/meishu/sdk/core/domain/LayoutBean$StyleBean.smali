.class public Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/domain/LayoutBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StyleBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BackgroundBean;,
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;,
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;,
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;,
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;,
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$IconBean;,
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;,
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;,
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;,
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;,
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;,
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;,
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;
    }
.end annotation


# instance fields
.field private button:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

.field private container:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;

.field private content:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

.field private creative:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

.field private creatives:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

.field private dislike:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

.field private icon:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$IconBean;

.field private id:I

.field private logo:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

.field private source:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

.field private title:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "id"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->setId(I)V

    .line 13
    .line 14
    .line 15
    const-string v1, "type"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->setType(I)V

    .line 22
    .line 23
    .line 24
    const-string v1, "container"

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->setContainer(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "title"

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->setTitle(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "creative"

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->setCreative(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "creatives"

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->setCreatives(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;)V

    .line 74
    .line 75
    .line 76
    const-string v1, "content"

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->setContent(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;)V

    .line 87
    .line 88
    .line 89
    const-string v1, "logo"

    .line 90
    .line 91
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->setLogo(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;)V

    .line 100
    .line 101
    .line 102
    const-string v1, "source"

    .line 103
    .line 104
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->setSource(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;)V

    .line 113
    .line 114
    .line 115
    const-string v1, "icon"

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$IconBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$IconBean;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->setIcon(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$IconBean;)V

    .line 126
    .line 127
    .line 128
    const-string v1, "dislike"

    .line 129
    .line 130
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->setDislike(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;)V

    .line 139
    .line 140
    .line 141
    const-string v1, "button"

    .line 142
    .line 143
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {p0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {v0, p0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->setButton(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;)V

    .line 152
    .line 153
    .line 154
    return-object v0
.end method


# virtual methods
.method public getButton()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->button:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContainer()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->container:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContent()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->content:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCreative()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->creative:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCreatives()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->creatives:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDislike()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->dislike:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIcon()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$IconBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->icon:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$IconBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public getLogo()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->logo:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->source:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->title:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public setButton(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->button:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    .line 2
    .line 3
    return-void
.end method

.method public setContainer(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->container:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContainerBean;

    .line 2
    .line 3
    return-void
.end method

.method public setContent(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->content:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ContentBean;

    .line 2
    .line 3
    return-void
.end method

.method public setCreative(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->creative:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean;

    .line 2
    .line 3
    return-void
.end method

.method public setCreatives(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->creatives:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;

    .line 2
    .line 3
    return-void
.end method

.method public setDislike(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->dislike:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$DislikeBean;

    .line 2
    .line 3
    return-void
.end method

.method public setIcon(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$IconBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->icon:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$IconBean;

    .line 2
    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public setLogo(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->logo:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$LogoBean;

    .line 2
    .line 3
    return-void
.end method

.method public setSource(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->source:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$SourceBean;

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->title:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TitleBean;

    .line 2
    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;->type:I

    .line 2
    .line 3
    return-void
.end method
