.class public Lcom/meishu/sdk/meishu_ad/nativ/f;
.super Lcom/meishu/sdk/core/ad/BaseAdSlot;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/meishu_ad/nativ/f$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:J

.field public D:J

.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field public j:[Ljava/lang/String;

.field public k:[Ljava/lang/String;

.field public l:[Ljava/lang/String;

.field public m:[Ljava/lang/String;

.field public n:[Ljava/lang/String;

.field public o:[Ljava/lang/String;

.field public p:[Ljava/lang/String;

.field public q:[Ljava/lang/String;

.field public r:[Ljava/lang/String;

.field public s:[Ljava/lang/String;

.field public t:[Ljava/lang/String;

.field public u:[Ljava/lang/String;

.field public v:I

.field public w:I

.field public x:I

.field public y:J

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/f;->w:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/f;->z:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/f;->A:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/f;->B:Z

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic a(Lcom/meishu/sdk/meishu_ad/nativ/f;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/f;->z:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic b(Lcom/meishu/sdk/meishu_ad/nativ/f;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/f;->A:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAdPatternType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->adPatternType:I

    .line 2
    .line 3
    return-void
.end method
