.class public Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/utils/PackageBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HappyBean"
.end annotation


# instance fields
.field private i:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastTime:J

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x:I


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
.method public getI()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getK()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->k:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLastTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->lastTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getR()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->r:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public setI(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setK(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->k:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setLastTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->lastTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setR(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->r:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/utils/PackageBean$HappyBean;->x:I

    .line 2
    .line 3
    return-void
.end method
