.class Lcom/ubix/ssp/ad/a$v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ubix/ssp/ad/e/a0/f$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubix/ssp/ad/a;->a(Lcom/ubix/ssp/ad/d/a;ILjava/util/HashMap;IIIZLcom/ubix/ssp/ad/g/c;Lcom/ubix/ssp/ad/g/h;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ubix/ssp/ad/a;


# direct methods
.method public constructor <init>(Lcom/ubix/ssp/ad/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ubix/ssp/ad/a$v;->a:Lcom/ubix/ssp/ad/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ubix/ssp/ad/e/z/h;)V
    .locals 2

    iget-object v0, p0, Lcom/ubix/ssp/ad/a$v;->a:Lcom/ubix/ssp/ad/a;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/ubix/ssp/ad/a;->s:Ljava/lang/ref/SoftReference;

    return-void
.end method
