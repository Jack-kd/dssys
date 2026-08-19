.class public final Lcom/ubix/ssp/ad/e/a0/d0/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/ubix/ssp/ad/e/a0/d0/b;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/d0/b;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ubix/ssp/ad/e/a0/d0/c;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    return p0
.end method
