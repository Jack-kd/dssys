.class Lcom/fl/saas/y0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/y0;


# direct methods
.method private constructor <init>(Lcom/fl/saas/y0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/y0$b;->a:Lcom/fl/saas/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fl/saas/y0;Lcom/fl/saas/y0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fl/saas/y0$b;-><init>(Lcom/fl/saas/y0;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/y0$b;->a:Lcom/fl/saas/y0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/fl/saas/y0;->a(Lcom/fl/saas/y0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
