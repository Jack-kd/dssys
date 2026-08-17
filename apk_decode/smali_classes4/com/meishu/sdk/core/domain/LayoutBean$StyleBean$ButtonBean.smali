.class public Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonBean"
.end annotation


# instance fields
.field private background:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BackgroundBean;

.field private border:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

.field private margin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private padding:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private text:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;


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

.method public static fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string v1, "border"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->setBorder(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "background"

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BackgroundBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BackgroundBean;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->setBackground(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BackgroundBean;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "text"

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->setText(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "margin"

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean;->access$000(Lorg/json/JSONArray;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->setMargin(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "padding"

    .line 61
    .line 62
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Lcom/meishu/sdk/core/domain/LayoutBean;->access$000(Lorg/json/JSONArray;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v0, p0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->setPadding(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBackground()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BackgroundBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->background:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BackgroundBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBorder()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->border:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMargin()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->margin:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPadding()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->padding:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getText()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->text:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBackground(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BackgroundBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->background:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BackgroundBean;

    .line 2
    .line 3
    return-void
.end method

.method public setBorder(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->border:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    .line 2
    .line 3
    return-void
.end method

.method public setMargin(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->margin:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setPadding(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->padding:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setText(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$ButtonBean;->text:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$TextBean;

    .line 2
    .line 3
    return-void
.end method
