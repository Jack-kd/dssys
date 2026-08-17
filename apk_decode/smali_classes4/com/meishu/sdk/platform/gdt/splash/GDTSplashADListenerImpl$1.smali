.class Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->createListenerProxy()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 v0, 0x0

    .line 10
    sparse-switch p2, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const-string p2, "onADClicked"

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    move p1, v0

    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :sswitch_1
    const-string p2, "onADExposure"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    goto :goto_1

    .line 37
    :sswitch_2
    const-string p2, "onADTick"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    const/4 p1, 0x3

    .line 46
    goto :goto_1

    .line 47
    :sswitch_3
    const-string p2, "onADPresent"

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    const/4 p1, 0x6

    .line 56
    goto :goto_1

    .line 57
    :sswitch_4
    const-string p2, "isSupportZoomOut"

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    .line 65
    const/4 p1, 0x7

    .line 66
    goto :goto_1

    .line 67
    :sswitch_5
    const-string p2, "onADDismissed"

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_0

    .line 74
    .line 75
    const/4 p1, 0x4

    .line 76
    goto :goto_1

    .line 77
    :sswitch_6
    const-string p2, "onNoAD"

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_0

    .line 84
    .line 85
    const/4 p1, 0x5

    .line 86
    goto :goto_1

    .line 87
    :sswitch_7
    const-string p2, "onADLoaded"

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_0

    .line 94
    .line 95
    const/4 p1, 0x2

    .line 96
    goto :goto_1

    .line 97
    :cond_0
    :goto_0
    const/4 p1, -0x1

    .line 98
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :pswitch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 103
    .line 104
    return-object p1

    .line 105
    :pswitch_1
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;

    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->onADPresent()V

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :pswitch_2
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;

    .line 112
    .line 113
    aget-object p2, p3, v0

    .line 114
    .line 115
    check-cast p2, Lcom/qq/e/comm/util/AdError;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->onNoAD(Lcom/qq/e/comm/util/AdError;)V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :pswitch_3
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->onADDismissed()V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :pswitch_4
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;

    .line 128
    .line 129
    aget-object p2, p3, v0

    .line 130
    .line 131
    check-cast p2, Ljava/lang/Long;

    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 134
    .line 135
    .line 136
    move-result-wide p2

    .line 137
    invoke-virtual {p1, p2, p3}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->onADTick(J)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :pswitch_5
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;

    .line 142
    .line 143
    aget-object p2, p3, v0

    .line 144
    .line 145
    check-cast p2, Ljava/lang/Long;

    .line 146
    .line 147
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 148
    .line 149
    .line 150
    move-result-wide p2

    .line 151
    invoke-virtual {p1, p2, p3}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->onADLoaded(J)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :pswitch_6
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->onADExposure()V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :pswitch_7
    iget-object p1, p0, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl$1;->this$0:Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/meishu/sdk/platform/gdt/splash/GDTSplashADListenerImpl;->onADClicked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 168
    .line 169
    .line 170
    :goto_3
    const/4 p1, 0x0

    .line 171
    return-object p1

    .line 172
    nop

    .line 173
    :sswitch_data_0
    .sparse-switch
        -0x69720319 -> :sswitch_7
        -0x3c62dbdd -> :sswitch_6
        -0x14544b79 -> :sswitch_5
        0x1f92776 -> :sswitch_4
        0x14284819 -> :sswitch_3
        0x3860eeff -> :sswitch_2
        0x4a2c9969 -> :sswitch_1
        0x5a6b5f85 -> :sswitch_0
    .end sparse-switch

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
