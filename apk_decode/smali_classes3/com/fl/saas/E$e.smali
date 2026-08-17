.class Lcom/fl/saas/E$e;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fl/saas/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/fl/saas/E;


# direct methods
.method public constructor <init>(Lcom/fl/saas/E;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fl/saas/E$e;->a:Lcom/fl/saas/E;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/E$e;->a:Lcom/fl/saas/E;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/fl/saas/E;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
