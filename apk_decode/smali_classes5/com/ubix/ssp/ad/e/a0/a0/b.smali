.class public Lcom/ubix/ssp/ad/e/a0/a0/b;
.super Ljava/lang/Exception;


# instance fields
.field private a:Lcom/ubix/ssp/open/AdError;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/open/AdError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/a0/b;->a:Lcom/ubix/ssp/open/AdError;

    return-void
.end method


# virtual methods
.method public a()Lcom/ubix/ssp/open/AdError;
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/a0/b;->a:Lcom/ubix/ssp/open/AdError;

    return-object v0
.end method
