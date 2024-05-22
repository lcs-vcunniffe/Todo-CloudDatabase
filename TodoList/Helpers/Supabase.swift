//
//  Supabase.swift
//  TodoList
//
//  Created by Veda Niav Cunniffe on 2024-05-22.
//

import Foundation
import Supabase

let supabase = SupabaseClient(
  supabaseURL: URL(string: "https://bukyryvfbwinvhzrzcbq.supabase.co")!,
  supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ1a3lyeXZmYndpbnZoenJ6Y2JxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTUxMjIxODgsImV4cCI6MjAzMDY5ODE4OH0.HuMhj2zdJToRBnJXK2mNr9MC_BeTNNSI8LJeblw99Nc"
)
