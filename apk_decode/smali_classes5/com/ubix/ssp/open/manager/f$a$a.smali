.class Lcom/ubix/ssp/open/manager/f$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/open/video/UBiXRewardInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/open/manager/f$a;->a(ZLjava/lang/String;ILjava/lang/String;Lcom/ubix/ssp/open/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ubix/ssp/open/AdError;

.field final synthetic e:Lcom/ubix/ssp/open/manager/f$a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/open/manager/f$a;Ljava/lang/String;ILjava/lang/String;Lcom/ubix/ssp/open/AdError;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/open/manager/f$a$a;->e:Lcom/ubix/ssp/open/manager/f$a;

    iput-object p2, p0, Lcom/ubix/ssp/open/manager/f$a$a;->a:Ljava/lang/String;

    iput p3, p0, Lcom/ubix/ssp/open/manager/f$a$a;->b:I

    iput-object p4, p0, Lcom/ubix/ssp/open/manager/f$a$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/ubix/ssp/open/manager/f$a$a;->d:Lcom/ubix/ssp/open/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lcom/ubix/ssp/open/AdError;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a$a;->d:Lcom/ubix/ssp/open/AdError;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardAmount()I
    .locals 1

    iget v0, p0, Lcom/ubix/ssp/open/manager/f$a$a;->b:I

    return v0
.end method

.method public getRewardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/open/manager/f$a$a;->a:Ljava/lang/String;

    return-object v0
.end method
