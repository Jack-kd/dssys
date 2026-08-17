.class public Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;
    }
.end annotation


# instance fields
.field private center:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

.field private left:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

.field private right:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;


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

.method public static fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string v1, "left"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->setLeft(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "center"

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->setCenter(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "right"

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;->fromJson(Lorg/json/JSONObject;)Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->setRight(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCenter()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->center:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLeft()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->left:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRight()Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->right:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCenter(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->center:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    .line 2
    .line 3
    return-void
.end method

.method public setLeft(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->left:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    .line 2
    .line 3
    return-void
.end method

.method public setRight(Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean;->right:Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean$CreativeBean5$ChildsBean$ChildBean;

    .line 2
    .line 3
    return-void
.end method
