.class public final synthetic Lh1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lh1/k;


# direct methods
.method public synthetic constructor <init>(Lh1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/j;->b:Lh1/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh1/j;->b:Lh1/k;

    invoke-static {v0}, Lh1/k;->b(Lh1/k;)V

    return-void
.end method
