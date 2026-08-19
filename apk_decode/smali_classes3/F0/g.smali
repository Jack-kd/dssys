.class public final synthetic LF0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LF0/h;


# direct methods
.method public synthetic constructor <init>(LF0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF0/g;->b:LF0/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, LF0/g;->b:LF0/h;

    invoke-static {v0}, LF0/h;->a(LF0/h;)V

    return-void
.end method
