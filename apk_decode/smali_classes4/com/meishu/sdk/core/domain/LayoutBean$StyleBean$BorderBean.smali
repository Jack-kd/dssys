.class public Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;
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
    name = "BorderBean"
.end annotation


# instance fields
.field private clip:Z

.field private color:Ljava/lang/String;

.field private radius:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private size:I


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

.method public static fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string v1, "clip"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->setClip(Z)V

    .line 15
    .line 16
    .line 17
    const-string v1, "radius"

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean;->access$000(Lorg/json/JSONArray;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->setRadius(Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "size"

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->setSize(I)V

    .line 37
    .line 38
    .line 39
    const-string v1, "color"

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->setColor(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getClip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->clip:Z

    .line 2
    .line 3
    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRadius()Ljava/util/List;
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
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->radius:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public setClip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->clip:Z

    .line 2
    .line 3
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setRadius(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->radius:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$BorderBean;->size:I

    .line 2
    .line 3
    return-void
.end method
