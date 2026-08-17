.class Lcom/ubix/ssp/ad/e/b0/h/m$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/b0/h/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/b0/h/m;


# direct methods
.method private constructor <init>(Lcom/ubix/ssp/ad/e/b0/h/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ubix/ssp/ad/e/b0/h/m$b;->a:Lcom/ubix/ssp/ad/e/b0/h/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ubix/ssp/ad/e/b0/h/m;Lcom/ubix/ssp/ad/e/b0/h/m$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ubix/ssp/ad/e/b0/h/m$b;-><init>(Lcom/ubix/ssp/ad/e/b0/h/m;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/b0/h/m$b;->a:Lcom/ubix/ssp/ad/e/b0/h/m;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/b0/h/m;->a(Lcom/ubix/ssp/ad/e/b0/h/m;)V

    return-void
.end method
