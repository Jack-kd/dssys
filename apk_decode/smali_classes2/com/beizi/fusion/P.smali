.class public final synthetic Lcom/beizi/fusion/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/beizi/fusion/q;


# direct methods
.method public synthetic constructor <init>(Lcom/beizi/fusion/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beizi/fusion/P;->b:Lcom/beizi/fusion/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/P;->b:Lcom/beizi/fusion/q;

    invoke-static {v0}, Lcom/beizi/fusion/q;->d(Lcom/beizi/fusion/q;)V

    return-void
.end method
