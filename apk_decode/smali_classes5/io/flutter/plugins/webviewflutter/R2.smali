.class public final synthetic Lio/flutter/plugins/webviewflutter/R2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/R2;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/R2;->b:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lkotlin/Result;

    invoke-static {v0, p1}, Lio/flutter/plugins/webviewflutter/ResultCompat$Companion;->a(Lkotlin/jvm/functions/Function1;Lkotlin/Result;)Lkotlin/j;

    move-result-object p1

    return-object p1
.end method
