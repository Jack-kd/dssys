.class public final synthetic Lcom/fl/saas/E1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/fl/saas/T0;


# direct methods
.method public synthetic constructor <init>(Lcom/fl/saas/T0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fl/saas/E1;->b:Lcom/fl/saas/T0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fl/saas/E1;->b:Lcom/fl/saas/T0;

    invoke-static {v0}, Lcom/fl/saas/T0;->a(Lcom/fl/saas/T0;)V

    return-void
.end method
