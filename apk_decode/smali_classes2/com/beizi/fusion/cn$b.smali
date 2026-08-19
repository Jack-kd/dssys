.class Lcom/beizi/fusion/cn$b;
.super Lcom/beizi/fusion/p3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/cn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/p3;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/beizi/fusion/cn$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beizi/fusion/cn$b;-><init>(I)V

    return-void
.end method
