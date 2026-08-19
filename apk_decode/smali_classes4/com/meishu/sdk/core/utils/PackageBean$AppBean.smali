.class public Lcom/meishu/sdk/core/utils/PackageBean$AppBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/utils/PackageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private others:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;"
        }
    .end annotation
.end field

.field private required:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;"
        }
    .end annotation
.end field

.field private ttl:Ljava/lang/Integer;

.field private url:Ljava/lang/String;


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


# virtual methods
.method public getA()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->a:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getB()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->b:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getC()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->c:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getD()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getE()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOthers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->others:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRequired()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->required:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTtl()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->ttl:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setA(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->a:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setB(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->b:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setC(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->c:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setD(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setE(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->e:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setOthers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->others:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setRequired(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/utils/PackageBean$AppBean$PackBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->required:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setTtl(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->ttl:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$AppBean;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
