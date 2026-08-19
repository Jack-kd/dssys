.class public abstract Lcom/ubix/ssp/ad/e/x/a$c;
.super Lcom/ubix/ssp/ad/e/x/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/x/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ubix/ssp/ad/e/x/a<",
        "Lcom/ubix/ssp/ad/e/x/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ubix/ssp/ad/e/x/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Lcom/ubix/ssp/ad/e/x/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/e/x/a$c;->e(Lcom/ubix/ssp/ad/e/x/d;)Lcom/ubix/ssp/ad/e/x/d;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/ubix/ssp/ad/e/x/d;)Lcom/ubix/ssp/ad/e/x/d;
    .locals 0

    return-object p1
.end method
