.class Lcom/beizi/fusion/pp$b;
.super Lcom/beizi/fusion/a1$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/pp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/a1$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/beizi/fusion/pp$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/beizi/fusion/pp$b;-><init>()V

    return-void
.end method
