package com.jagapoko.shared

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform