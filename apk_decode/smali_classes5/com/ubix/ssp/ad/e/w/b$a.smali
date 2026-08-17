.class Lcom/ubix/ssp/ad/e/w/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/e/w/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/e/w/b;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/e/w/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/w/b$a;->a:Lcom/ubix/ssp/ad/e/w/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ubix/ssp/ad/e/w/b$a;->a:Lcom/ubix/ssp/ad/e/w/b;

    iget-object v0, v0, Lcom/ubix/ssp/ad/e/w/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/w/s/b;->a(Landroid/content/Context;)V

    return-void
.end method
