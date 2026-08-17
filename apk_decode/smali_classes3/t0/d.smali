.class public final synthetic Lt0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lorg/fourthline/cling/android/AndroidUpnpService;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lorg/fourthline/cling/android/AndroidUpnpService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt0/d;->b:Ljava/util/List;

    iput-object p2, p0, Lt0/d;->c:Lorg/fourthline/cling/android/AndroidUpnpService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt0/d;->b:Ljava/util/List;

    iget-object v1, p0, Lt0/d;->c:Lorg/fourthline/cling/android/AndroidUpnpService;

    invoke-static {v0, v1}, Lt0/e;->c(Ljava/util/List;Lorg/fourthline/cling/android/AndroidUpnpService;)V

    return-void
.end method
